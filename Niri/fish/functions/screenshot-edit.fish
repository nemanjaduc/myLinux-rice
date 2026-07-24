function screenshot-edit
    niri msg action $argv[1]
    set BEFORE (/usr/bin/ls ~/Pictures/Screenshots | wc -l)
    while test (/usr/bin/ls ~/Pictures/Screenshots | wc -l) -eq $BEFORE
        sleep 0.1
    end
    set FILE ~/Pictures/Screenshots/(/usr/bin/ls -Art ~/Pictures/Screenshots | tail -n1)
    satty -f $FILE --output-filename ~/Pictures/Screenshots/'+%Y%m%d-%H:%M:%S'.png
    rm $FILE
end

