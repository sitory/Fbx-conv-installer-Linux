cd "${0%/*}"
options="$@"
while true; do find models | entr -d "./Run.sh" "$options"; done
