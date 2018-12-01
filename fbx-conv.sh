options="$@"
cd "${0%/*}"
export LD_LIBRARY_PATH=.
./fbx-conv "$options" {} \;
