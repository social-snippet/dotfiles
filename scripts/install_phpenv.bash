SOURCE_TEXT=$(cat <<EOF
export PATH="\$HOME/.phpenv/bin:\$PATH"
eval "\$(phpenv init -)"
EOF
)


if [[ ! -e ~/.phpenv ]]; then
  curl -s -L https://raw.githubusercontent.com/CHH/phpenv/master/bin/phpenv-install.sh | bash
  git clone git://github.com/CHH/php-build.git ~/.phpenv/plugins/php-build
fi

echo "$SOURCE_TEXT" > ~/.bash.d/phpenv.bash
echo "$SOURCE_TEXT"
