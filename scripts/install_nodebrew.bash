SOURCE_TEXT=$(cat <<EOF
export PATH=\$HOME/.nodebrew/current/bin:\$PATH
EOF
)

[[ -e ~/.nodebrew ]] || curl -L git.io/nodebrew | perl - setup

eval "$SOURCE_TEXT"

echo "$SOURCE_TEXT" > ~/.bash.d/nodebrew.bash
echo "$SOURCE_TEXT"

