cd ~
if [ -d ~/Environment ];then
echo "folder Environment has existed"
else	
	mkdir ~/Environment
	echo "created folder Environment ok"
fi
cd ~/Environment
echo "-------start install rust------"
mkdir CARGO_HOME
mkdir RUSTUP_HOME
echo -e "\n\n" >> /etc/profile
echo "export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static" >> /etc/profile
echo "export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup" >> /etc/profile
source /etc/profile
curl https://sh.rustup.rs -sSf | sh
echo -e "[source.crates-io] \nreplace-with = 'ustc' \n[source.ustc] \nregistry = \"https://mirrors.ustc.edu.cn/crates.io-index/\"" > ~/.cargo/config