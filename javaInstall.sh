echo "-----start install jdk in ~/Environment/jdk------"
cd ~
if [ -d ~/Environment ];then
echo "folder Environment has existed"
else	
	mkdir ~/Environment
	echo "created folder Environment ok"
fi
cd ~/Environment

wget -c https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/11/jdk/x64/linux/OpenJDK11U-jdk_x64_linux_hotspot_11.0.9_11.tar.gz
tar -zxvf OpenJDK11U-jdk_x64_linux_hotspot_11.0.9_11.tar.gz
rm OpenJDK11U-jdk_x64_linux_hotspot_11.0.9_11.tar.gz
pathroot=`pwd`
#mkdir "$pathroot/jdk-11"
echo -e "\n\n" >> /etc/profile
echo "export JAVA_HOME=$pathroot/jdk-11.0.9+11" >> /etc/profile
echo  "export PATH=\$PATH:\$JAVA_HOME/bin" >> /etc/profile

source /etc/profile

echo "please execute source /etc/profile to make go commond work"





