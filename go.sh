wget https://go.dev/dl/go1.21.3.linux-386.tar.gz
tar -xvf go1.21.3.linux-386.tar.gz
mv go /usr/local
echo -e 'export GOROOT=/usr/local/go\nexport GOPATH=$HOME/Projects/Proj1\nexport PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
go version
rm -rf go1.21.3.linux-386.tar.gz
