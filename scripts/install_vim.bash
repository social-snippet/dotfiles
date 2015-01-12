[ -d ~/local/src ] || mkdir -p ~/local/src
cd ~/local/src
hg clone https://vim.googlecode.com/hg/ vim
cd vim
./configure \
  --with-features=huge \
  --with-tlib=ncurses \
  --enable-rubyinterp \
  --enable-luainterp \
  --enable-gui=gtk2 \
  --enable-locale \
  --enable-gpm \
  --enable-acl \
  --enable-multibyte \
  --enable-cscope \
  --enable-perlinterp \
  --prefix=$HOME/local
make -j4
make install
