SOURCE_TEXT=$(cat <<EOF
export PATH=\$HOME/.pyenv/bin:\$PATH
export PATH=\$HOME/.pyenv/shims:\$PATH
eval "\$(pyenv init -)"
EOF
)

eval "$SOURCE_TEXT"

[[ -e ~/.pyenv ]] || git clone git://github.com/yyuu/pyenv.git ~/.pyenv
eval "$(pyenv init -)"

echo "$SOURCE_TEXT" > ~/.bash.d/pyenv.bash
echo "$SOURCE_TEXT"
