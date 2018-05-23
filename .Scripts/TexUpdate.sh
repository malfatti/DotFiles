ExtraPacks="
"

Packs="
dev-texlive/texlive-genericrecommended
dev-texlive/texlive-plaingeneric
dev-texlive/texlive-plainextra 
dev-texlive/texlive-basic
dev-texlive/texlive-fontsrecommended
dev-texlive/texlive-fontutils 
dev-texlive/texlive-latexextra 
dev-texlive/texlive-latexrecommended
dev-texlive/texlive-luatex 
dev-texlive/texlive-mathscience
dev-texlive/texlive-metapost 
dev-texlive/texlive-pictures
dev-texlive/texlive-pstricks
dev-texlive/texlive-xetex 
texlive-latex
latex-beamer
texlive-bibtexextra
app-text/texlive 
app-text/texlive-core"

#sudo emerge --deselect $Packs
sudo emerge --deselect=n --unmerge $Packs
sudo emerge --ask --oneshot --update $Packs --jobs=$(grep processor /proc/cpuinfo | wc -l)
