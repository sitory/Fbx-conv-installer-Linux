cd "${0%/*}"
export LD_LIBRARY_PATH=.
find models -maxdepth 1 -type f -exec ./fbx-conv -f -p {} \;

mv -v models/* done/
mv done/*.g3db converted
