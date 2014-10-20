SOURCE_TEXT=$(cat <<EOF
export PATH="\$HOME/.rbenv/bin:\$PATH"
eval "\$(rbenv init -)"
EOF
)


if [[ ! -e ~/.rbenv ]]; then
  git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
  git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
fi

eval "$SOURCE_TEXT"
echo "$SOURCE_TEXT" > ~/.bash.d/rbenv.bash
echo "$SOURCE_TEXT"
