cd "${0%/*}"
#FBX-CONV
git clone https://github.com/Yzubi/fbx-conv.git
cd fbx-conv
wget https://ufpr.dl.sourceforge.net/project/premake/Premake/4.4/premake-4.4-beta5-linux.tar.gz
tar -zxvf premake-4.4-beta5-linux.tar.gz
cd ..
#FBX-SDK
mkdir fbxsdk
cd fbxsdk
wget http://download.autodesk.com/us/fbx/2019/2019.0/fbx20190_fbxsdk_linux.tar.gz
tar -zxvf fbx20190_fbxsdk_linux.tar.gz
./fbx20190_fbxsdk_linux
