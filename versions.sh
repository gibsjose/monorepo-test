#!/usr/local/bin/fish

# Search through all subdirectories and find all files called 'VERSION'
set TOKEN "VERSION"
set MATCHES (find . -name $TOKEN)

# Print the contents of each
for v in $MATCHES
    set object_version (cat $v | sed 's/\n$//g')
    set object (echo $v | sed 's/\/VERSION$//g' | sed 's/\.\///g' | sed 's/\//./g')
    echo -e "$object   \t\t$object_version"
end
