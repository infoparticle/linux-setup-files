SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

unzip $SCRIPT_DIR/jetbrains-mono.zip -d  /usr/share/fonts/truetype/
fc-cache -fv
echo "Try fc-list "
