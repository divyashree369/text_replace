# Ask the user for input
echo "Enter the file name:"
read file

# Check if file exists
if [ ! -f "$file" ]; then
    echo "File not found!"
    exit 1
fi

# Get the word to search and the new word
echo "Enter the word to search:"
read search

echo "Enter the new word to replace with:"
read replace

# Use sed to replace all occurrences
sed -i "s/$search/$replace/g" "$file"

echo "All occurrences of '$search' replaced with '$replace' in $file"
