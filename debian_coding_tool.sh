# update
sudo apt-get update

# for C/C++
sudo apt-get install -y gcc g++ 
sudo apt-get install -y terminator
sudo apt-get install -y vim cscope ctags

# fork from vgod's vimrc
wget -O https://raw.github.com/jiminhsieh/vimrc/master/auto-install.sh | sh

# taglist
wget http://www.vim.org/scripts/download_script.php?src_id=19574
unzip taglist.zip ~/.vim

# for Java
sudo apt-get -y install eclipse eclipse-egit
sudo echo "" | sudo tee -a /etc/apt/sources.list
sudo echo "# Oracle Java" | sudo tee -a /etc/apt/sources.list
sudo echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" \
                | sudo tee -a /etc/apt/sources.list
sudo echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu precise \
                main" | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
sudo apt-get update
sudo apt-get install -y oracle-java6-installer oracle-java7-installer

# developping tool 
sudo apt-get install -y meld git subversion

# Python 
sudo apt-get install -y python3 ipython
# auto fit Python coding style
sudo easy_install -ZU autopep8
# PyCscope
git clone https://github.com/portante/pycscope.git
wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O - | sudo python
rm ez_setup.py
sudo python pycscope/setup.py install 
sudo rm -r pycscope
