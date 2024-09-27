#!/bin/bash

# 1. Display a message
echo "Starting the file manipulation script!"

# 2. Create a new directory
mkdir my_test_directory
echo "Directory 'my_test_directory' created."

# 3. Create a new text file
touch sample_file.txt
echo "File 'sample_file.txt' created."

# 4. List current directory contents
echo "Listing contents of the current directory:"
ls

# 5. Move the file into the new directory
mv sample_file.txt my_test_directory/
echo "File 'sample_file.txt' moved into 'my_test_directory'."

# 6. List the contents of the new directory
echo "Listing contents of 'my_test_directory':"
ls my_test_directory

# 7. Copy the file back to the parent directory
cp my_test_directory/sample_file.txt .
echo "File 'sample_file.txt' copied back to the parent directory."

# 8. Remove the file and directory
rm sample_file.txt
rm -r my_test_directory
echo "File and directory removed."

# 9. Final directory listing to confirm cleanup
echo "Final directory contents:"
ls

echo "File manipulation script completed!"
