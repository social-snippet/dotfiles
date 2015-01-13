for f in ~/.bash.d/*.bash; do
  source ${f}
done

for f in ~/.bash.d/ext/*.bash; do
  source ${f}
done

# added by travis gem
[ -f /home/dev-snippet/.travis/travis.sh ] && source /home/dev-snippet/.travis/travis.sh

