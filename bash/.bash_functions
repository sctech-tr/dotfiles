mkcd ()
{
if [ -n "$1" ]; then
    mkdir -p -- "$1" && cd -P -- "$1"
else
    echo "Usage: mkcd <directory>"
fi
}
extract() {
  if [ -f "$1" ]; then
    case "$1" in
      *.tar.bz2) tar xjf "$1" ;;
      *.tar.gz)  tar xzf "$1" ;;
      *.zip)     unzip "$1" ;;
      *) echo "Cannot extract '$1'" ;;
    esac
  fi
}
fetch() {
    case "$1" in
        -neo)
            neofetch
            ;;
        -screen)
            screenfetch
            ;;
        -hy)
            hyfetch
            ;;
        -neowo)
            neowofetch
            ;;
        -better)
            betterfetch
            ;;
        -z)
            zfetch
            ;;
        -cpu)
            cpufetch
            ;;
        -p)
            pfetch
            ;;
        -u)
            ufetch
            ;;
        -tty)
            ttyfetch
            ;;
        -gb)
            gbfetch
            ;;
        -fast)
            fastfetch
            ;;
        -str)
            strlx
            ;;
        -no)
            nofetch
            ;;
        -bro)
            brofetch
            ;;
        -qwq)
            python3 -m qwqfetch
            ;;
        -sc)
            python3 -m scfetch
            ;;
	-s)
	    sfetch
	    ;;
        *)
            echo "Your fetches are:"
            echo "-neo: neofetch"
            echo "-screen: screenfetch"
            echo "-hy: hyfetch"
            echo "-neowo: neowofetch"
            echo "-better: betterfetch"
            echo "-z: zfetch"
            echo "-cpu: cpufetch"
            echo "-p: pfetch"
            echo "-u: ufetch"
            echo "-tty: ttyfetch"
            echo "-gb: gbfetch"
            echo "-fast: fastfetch"
            echo "-str: strlx"
            echo "-no: nofetch"
            echo "-bro: brofetch"
            echo "-qwq: qwqfetch"
            echo "-sc: scfetch"
	    echo "-s: sfetch"
            ;;
    esac
}
