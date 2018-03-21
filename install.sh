git clone git://github.com/KimiGao/vimfile.git ~/.vim
cd ~/.vim

sudo cp .vimrc ~/.vimrc
sudo cp .gvimrc ~/.gvimrc

cd bundle/vundle && git clone git://github.com/gmarik/vundle.git .
vim +BundleInstall +qall

# install monaco font
#cd ~/tmp
#wget http://www.gringod.com/wp-upload/MONACO.TTF
#sudo cp MONACO.TTF /usr/share/fonts/truetype/
#git clone https://github.com/pdf/ubuntu-mono-powerline-ttf.git ~/.fonts/ubuntu-mono-powerline-ttf
#sudo fc-cache -f -v
