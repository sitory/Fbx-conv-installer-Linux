cd "${0%/*}"
cd fbx-conv
chmod 755 libfbxsdk.a libfbxsdk.so

#link
ln -s ../fbxsdk
export FBX_SDK_ROOT=fbxsdk

./premake4 --file=premake.lua gmake
cd build/gmake
ln -s ../../../fbxsdk
make
