cd "${0%/*}"
export LD_LIBRARY_PATH=.

options="$@"
./fbx-conv "$options"
