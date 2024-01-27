for ven in */ ; do
echo DOING $ven
/bin/mkdir -p ../models/$ven
/bin/rm -v ../models/$ven/*.*
/bin/find . -name \*.qc -exec sh -c "../../bin/studiomdl.exe -nox360 -game ../../firegame {}" \; # wtf
done