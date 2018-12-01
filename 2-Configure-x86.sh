cd "${0%/*}"
cp fbxsdk/lib/gcc4/x86/release/libfbxsdk.so fbx-conv
cp fbxsdk/lib/gcc4/x86/release/libfbxsdk.a fbx-conv

#x86
cd fbx-conv
sed -i 's/x64/x86/g' premake.lua
cd ..
