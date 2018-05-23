#!/usr/bin/env python3
"""
@author: Cathal Garvey
@source: https://groups.google.com/d/msg/diybio/iMkORtrVNkE/s961vODw2MYJ
"""

import requests
import re
import argparse
import sys

P = argparse.ArgumentParser(description="A video extractor/downloader for jove.com. Spits out the download link for use with wget/curl/other.")
P.add_argument("videoURL",
                help="URL of the video to download.")
P.add_argument("--user-agent",type=str,default="Mozilla/5.0 (X11; Linux i686; rv:20.0) Gecko/20100101 Firefox/20.0",
                help="Custom user-agent string to use. Default is a generic firefox string.")
P.add_argument("-v","--verbose",action="store_true",default=False,
                help="Be more chatty. May break piping of output to other tools.")
P.add_argument("-g","--get-video",action="store_true",default=False,
                help="Don't print video link, just get the video and save locally!")
A = P.parse_args()

# Verbosity!
_print = print
def print(*args, **kwargs):
    if A.verbose:
        _print(*args, **kwargs)

# Jove gets the video download link by posting a "videoid" argument to jove.com/video-chapters,
# and this videoid is embedded in-page whereas the direct video download link is not.
print("Requesting page..")
try:
    videopage = requests.get(A.videoURL, headers={"User-Agent":A.user_agent})
except requests.exceptions.ConnectionError:
    _print("Error fetching page, are you connected?")
    sys.exit(1)
print("Parsing page for video-id..")
videoline = [x for x in videopage.text.splitlines() if "videoid" in x][0]
videoURL = re.search("data-url='(/video-chapters[^']+)'", videoline)
if videoURL:
    videoURL = videoURL.group(1)
else:
    raise Exception("Could not parse the data-url link from the provided link. Page content was:\n\n"+videopage.text)
print("Got relative URL for requesting video download URL:",videoURL)
print("Making request for video download URL.")
# To get download link post the videoid to jove.com/video-chapters and then regextract the link
try:
    vidlinkrequest = requests.get("http://www.jove.com{0}".format(videoURL),
                                headers={"User-Agent": A.user_agent,
                                         "Referer": A.videoURL,
                                         # All the below is probably unnecessary but helps maintain the ruse.
                                         "X-Requested-With":"XMLHttpRequest",
                                         "Host":"www.jove.com",
                                         "Connection":"keep-alive",
                                         "Cache-Control":"max-age=0",
                                         "Accept-Language":"en-US,en;q=0.5",
                                         "Accept-Encoding":"gzip, deflate",
                                         "Accept":"*/*"})
except requests.exceptions.ConnectionError:
    _print("Error fetching page, are you connected?")
    sys.exit(1)

print("Received response, parsing for URL..")
vidlink = re.search('video="([^"]+)"', vidlinkrequest.text.replace("&#58;",":"))
if vidlink:
    vidlink = vidlink.group(1)
    print("Found final URL for video download:")
    if A.get_video:
        print(vidlink)
        print("Making request for full video download..")
        try:
            video = requests.get(vidlink,
                                    headers={"User-Agent": A.user_agent,
                                             "Referer": A.videoURL,
                                             "Accept-Encoding":"gzip, deflate"})
        except requests.exceptions.ConnectionError:
            _print("Error fetching video, connection may have cut or been terminated by server?")
            _print("The video link was:",vidlink)
            sys.exit(1)
        with open(vidlink.rsplit("/",1)[1], "wb") as OutputF:
            OutputF.write(video.content)
    else:
        # Default behaviour: just print the URL to stdout.
        # If verbose is not enabled, the output can be piped directly to wget or curl,
        # which is a *better option* than using the build-in get function for users
        # sensible enough to be using Linux, but isn't practical for nutty win/mac users.
        _print(vidlink)
else:
    raise Exception("Could not parse video download link from returned data. Returned data was:\n\n"+vidlink.text)
