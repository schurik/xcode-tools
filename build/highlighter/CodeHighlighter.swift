TAGS="TODO:|FIXME:"
ERRORTAG="ERROR:"
[[ $0 =~ ([a-zA-Z]*)\.swift ]]
find "${SRCROOT}" \( -name "*.h" -or -name "*.m" -or -name "*.swift" ! -name ${BASH_REMATCH[0]} \) -print0 | xargs -0 egrep --with-filename --line-number --only-matching "($TAGS).*\$|($ERRORTAG).*\$" | perl -p -e "s/($TAGS)/ warning: \$1/" | perl -p -e "s/($ERRORTAG)/ error: \$1/"
