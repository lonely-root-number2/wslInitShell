cd ~
if [ -d ~/Environment ];then
echo "folder Environment has existed"
else	
	mkdir ~/Environment
	echo "created folder Environment ok"
fi
cd ~/Environment
echo "start install go 1.15.3"
wget -c https://studygolang.com/dl/golang/go1.15.3.linux-amd64.tar.gz
tar -zxvf go1.15.3.linux-amd64.tar.gz
rm go1.15.3.linux-amd64.tar.gz
pathroot=`pwd`
mkdir "$pathroot/GOPATH"
echo -e "\n\n" >> /etc/profile
echo "export GOROOT=$pathroot/go" >> /etc/profile
echo  "export GOPATH=$pathroot/GOPATH" >> /etc/profile
echo  "export GOBIN=$pathroot/GOPATH/bin" >> /etc/profile
echo  "export PATH=\$PATH:\$GOROOT/bin:\$GOBIN" >> /etc/profile

source /etc/profile
go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.cn,direct
echo "please execute source /etc/profile to make go commond work"
