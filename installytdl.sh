termux-setup-storage
pkg install -y python ffmpeg atomicparsley
yes | pip install youtube-dl
url="https://raw.githubusercontent.com/Practicalbutterfly5/Ytdl/main"
#curl -L 'https://github.com/agnostic-apollo/tudo/releases/download/v0.1.0/tudo' -o "/data/data/com.termux/files/usr/bin/tudo" ; export termux_bin_path="/data/data/com.termux/files/usr/bin" ; export owner="$(stat -c "%u" "$termux_bin_path")" ;chown "$owner:$owner" "$termux_bin_path/tudo" && chmod 700 "$termux_bin_path/tudo"
mkdir $HOME/bin
#mkdir -p $HOME/.termux/tasker
#value="true"; key="allow-external-apps"; file="/data/data/com.termux/files/home/.termux/termux.properties"; mkdir -p "$(dirname "$file")"; chmod 700 "$(dirname "$file")"; if ! grep -E '^'"$key"'=.*' $file &>/dev/null; then [[ -s "$file" && ! -z "$(tail -c 1 "$file")" ]] && newline=$'\n' || newline=""; echo "$newline$key=$value" >> "$file"; else sed -i'' -E 's/^'"$key"'=.*/'"$key=$value"'/' $file; fi
curl "$url/termux-url-opener" > $HOME/bin/termux-url-opener
chmod +x $HOME/bin/termux-url-opener
#termux-open-url $url