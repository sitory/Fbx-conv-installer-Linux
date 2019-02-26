cd "${0%/*}"
options="$@"
while sleep 2; do find models | entr -d -r "./Run.sh" "$options"; done
