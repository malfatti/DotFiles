## My aliases and functions

##=== Aliases ===##

# Power, CPU and memory management
alias FreeRAMAndCache='bash $SCRIPTSPATH/Bash/System/FreeRAMAndCache.sh'
alias GoToSleep='bash $SCRIPTSPATH/Bash/Power/GoToSleep.sh'
alias NoTmpFS='echo ""$1" notmpfs.conf" >> /etc/portage/package.env/NoTmpFS'
alias Optimus='vblank_mode=0 optirun'
alias Primus='vblank_mode=0 primusrun $1'
alias SetTurbo='bash $SCRIPTSPATH/Bash/Power/SetTurbo.sh'
alias SetCPUGovernor='bash $SCRIPTSPATH/Bash/Power/SetCPUGovernor.sh'

# Mounting shortcuts
alias Build2Ram='sudo mount tmpfs /var/tmp/portage/ -t tmpfs -o uid=250,gid=250,mode=0775,size=75%'
alias Mount='udisksctl mount --block-device'
alias PowerOffDevice='bash $SCRIPTSPATH/Bash/Power/PowerOffDevice.sh'
alias Unmount='echo "Syncing disks..."; sync; echo "Unmounting..."; udisksctl unmount --block-device'

# Colorize things
#alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Multimedia
alias MPlayerHeavy='mplayer -lavdopts threads=4'
alias MPlayerLogOn='bash ~/.Scripts/Programs/MPlayerLogOn.sh'
alias MPlayerRecursive='bash ~/.Scripts/Programs/MPlayerRecursive.sh'
alias MPlayerASCII='urxvt -g 120x50 -fn "*-fixed-*-*-*-6-*" -e mplayer -vo caca -really-quiet'
alias MPlayerUltraVol='mplayer -softvol −softvol-max 800'
alias WebCam='mplayer tv:// -tv width=800:height=600 -xy 480'

# Modified programs
alias Feh='feh -dx. -B black'
alias ffmpeg='ffmpeg -hide_banner'
alias inkscape='vblank_mode=0 primusrun inkscape'
alias sl='sl -aFl'
alias pdflatex='bash $SCRIPTSPATH/Bash/Files/PDFLaTeX.sh'
alias W3m='xterm -e w3m -no-mouse'

# OneLiners
alias Black2Blue='convert -density 300 $1 -fill blue -opaque black $2'
alias FindDups='find -name $1 -print0 | xargs -0 md5sum | sort | uniq -Dw 32'

# Shortcuts to programs
alias Arduino='~/Software/Programs/Arduino/arduino'
alias Conda='~/Software/Miniconda3/bin/conda'
alias ECM='~/Software/Programs/ECMTools/ecm'
alias UnECM='~/Software/Programs/ECMTools/unecm'
alias icy='Here=$(pwd); cd $GITPATH/Icy-App/; vblank_mode=0 primusrun java -jar icy.jar; cd $Here'
alias Klusta='~/Software/Miniconda3/envs/klusta/bin/klusta'
alias lspci='/usr/sbin/lspci'
alias MatLab='MATLAB_JAVA=/usr/lib/jvm/oracle-jre-bin-1.8/ vblank_mode=0 primusrun ~/Software/Programs/MatLabR2015a/bin/matlab'
alias OpenEphysBuild='bash $SCRIPTSPATH/OpenEphys/Build.sh'
alias OpenEphysD='Dir=$(pwd); cd $SCRIPTSPATH/OpenEphys/SignalChains; LD_LIBRARY_PATH=$GITPATH/OpenEphysD/ $GITPATH/OpenEphysD/open-ephys; cd $Dir'
alias OpenEphysM='Dir=$(pwd); cd $SCRIPTSPATH/OpenEphys/SignalChains; LD_LIBRARY_PATH=$GITPATH/OpenEphysM/ $GITPATH/OpenEphysM/open-ephys; cd $Dir'
alias OpenEphysT='Dir=$(pwd); cd $SCRIPTSPATH/OpenEphys/SignalChains; LD_LIBRARY_PATH=$GITPATH/OpenEphysT/ $GITPATH/OpenEphysT/open-ephys; cd $Dir'
alias OpenEphysRHA='Dir=$(pwd); cd $SCRIPTSPATH/OpenEphys/SignalChains; $GITPATH/OpenEphysRHA/Builds/Linux/build/open-ephys; cd $Dir'
alias Phy='~/Software/Miniconda3/envs/klusta/bin/phy kwik-gui --debug'
alias Spyder='python $GITPATH/spyder/bootstrap.py'
alias TuxGuitar='~/Software/Programs/TuxGuitar/tuxguitar.sh'
alias TorBrowser='~/Software/Programs/TorBrowser/Browser/start-tor-browser'
alias XPPAut='~/Software/Programs/XPPAut/xppaut'

# Wine bottles
alias HollowKnight='Here=$(pwd); cd $WINEPATH/HollowKnight; WINEPREFIX=$(pwd) WINEDEBUG=-all vblank_mode=0 primusrun wine drive_c/GOGGames/HollowKnight/hollow_knight.exe; cd $Here'
alias Oddworld-MunchsOddysee='Here=$(pwd); cd $WINEPATH/Oddworld-MunchsOddysee; WINEPREFIX=$(pwd) WINEDEBUG=-all vblank_mode=0 primusrun wine drive_c/GOGGames/Oddworld-MunchsOddysee/Munch.exe; cd $Here'
alias Oddworld-NewNTasty='Here=$(pwd); cd $WINEPATH/Oddworld-NewNTasty; WINEPREFIX=$(pwd) WINEDEBUG=-all vblank_mode=0 primusrun wine drive_c/GOGGames/OddworldNewNTasty/NNT.exe; cd $Here'
alias Oddworld-StrangersWrath='Here=$(pwd); cd $WINEPATH/Oddworld-StrangersWrath; WINEPREFIX=$(pwd) WINEDEBUG=-all vblank_mode=0 primusrun wine drive_c/GOGGames/StrangersWrathHD/Launcher.exe; cd $Here'
alias Outlaws='Here=$(pwd); cd $WINEPATH/Outlaws; WINEPREFIX=$(pwd) WINEDEBUG=-all vblank_mode=0 primusrun wine drive_c/GOGGames/Outlaws/OUTLAWS.EXE; cd $Here'
alias Postal2='Here=$(pwd); cd $WINEPATH/Postal2; WINEPREFIX=$(pwd) WINEDEBUG=-all vblank_mode=0 primusrun wine drive_c/GOGGames/Postal2-ShareThePain/System/Postal2.exe; cd $Here'
alias SteamWorldDig='Here=$(pwd); cd $WINEPATH/SteamWorldDig/drive_c/GOGGames/SteamWorldDig; WINEPREFIX=$WINEPATH/SteamWorldDig WINEDEBUG=-all vblank_mode=0 primusrun wine SteamWorldDig.exe; cd $Here'
alias TheCave='Here=$(pwd); cd $WINEPATH/TheCave; WINEPREFIX=$(pwd) WINEDEBUG=-all vblank_mode=0 primusrun wine drive_c/Program\ Files/The\ Cave/Cave.exe; cd $Here'

## Scripts
alias Alarm='bash ~/.Scripts/Alarm.sh'
alias Android='bash ~/.Scripts/Android.sh'
alias BashOptions='bash ~/.Scripts/BashOptions.sh'
alias BkpSysFiles='bash ~/.Scripts/BkpSysFiles.sh'
alias DD='bash $SCRIPTSPATH/Bash/System/DD.sh'
alias LaTex2Doc='bash $SCRIPTSPATH/Bash/Files/LaTex2Doc.sh'
alias CpDirTree='bash ~/.Scripts/CpDirTree.sh'
alias FindBadPNGFiles='bash ~/.Scripts/FindStupidPNGFiles.sh'
alias FixBadPNGFiles='bash ~/.Scripts/FixStupidPNGFiles.sh'
alias FixStupidFileNames='bash $SCRIPTSPATH/Bash/Files/FixStupidFileNames.sh'
alias GenerateCueFile='bash ~/.Scripts/GenerateCueFile.sh'
alias JoveDL='python3 ~/.Scripts/JoveDL.py'
alias NetControl='bash ~/.Scripts/NetControl.sh'
alias OrganizeFileNames='bash $SCRIPTSPATH/Bash/Files/OrganizeFileNames.sh'
alias PrintDefaults='bash ~/.Scripts/PrintDefaults.sh'
alias RGB2CMYK='bash $SCRIPTSPATH/Bash/Files/RGB2CMYK.sh'
alias RWindows='bash ~/.Scripts/Programs/RWindows.sh'
alias SetFont='bash $SCRIPTSPATH/Bash/System/SetFont.sh'
alias Sozi2Pdf='python3 ~/.Scripts/Sozi2PDF/sozi2pdf.py'
alias Transmission='bash ~/.Scripts/Programs/Transmission.sh'
alias TrimSpaces='bash $SCRIPTSPATH/Bash/Files/TrimSpaces.sh'
alias UpdateHostsFile='sudo bash ~/.Scripts/UpdateHostsFile.sh'

## Sound and Video
alias DisplayCtl='bash $SCRIPTSPATH/Bash/Video/DisplayCtl.sh'
alias SoundCtl='bash $SCRIPTSPATH/Bash/Audio/ALSA/SoundCtl.sh'
alias CutVideo='bash $SCRIPTSPATH/Bash/Video/CutVideo.sh'

