cd "${0%/*}"
export LD_LIBRARY_PATH=.

options="$@"
find models -maxdepth 1 -type f -exec ./fbx-conv -f "$options" {} \;

mv -v models/* done/
mv done/*.g3db converted
