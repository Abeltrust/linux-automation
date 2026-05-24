 #!/data/data/com.termux/files/usr/bin/bash

echo "======================"
echo "==[Input File Name]=="
echo "======================"
read FILE


FOUND=$(find . -type f -name "${FILE}*" 2>/dev/null | head -n 1)

if [ -n "$FOUND" ]; then
    echo "File exists: $FOUND"
    cat "$FOUND"
else
    echo "File not found, creating it..."

    NEWFILE="${FILE}.txt"
    touch "$NEWFILE"

    echo "Adding head content to file..."

   
    head -n 5 > "$NEWFILE"

    echo "Viewing file content..."
    cat "$NEWFILE"
    echo
fi
