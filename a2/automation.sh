#!/bin/bash

# Set the target directory
#!/bin/bash

# Set the target directory

# Function to organize files
organize_files() {
    # Assume the script is run from the target directory
    cd "$TARGET_DIR" || exit

    # Loop through all files in the target directory
    for file in *; do
        # Skip directories and the script file itself
        if [ -d "$file" ] || [ "$file" == "automation.sh" ]; then
            continue
        fi

        # Get the base name of the file up to the first digit (e.g., "text" from "text1")
        base_name=$(echo "$file" | sed -r 's/[0-9]+.*//')

        # Skip if the base name is empty
        if [ -z "$base_name" ]; then
            continue
        fi

        # Create a directory with the base name if it doesn't exist
        if [ ! -d "$base_name" ]; then
            mkdir "$base_name"
        fi

        # Move the file into the corresponding directory
        mv "$file" "$base_name/"
    done
}

# Main loop to check and organize files every 5 seconds
while true; do
    organize_files
    sleep 5
done

# Function to organize files
organize_files() {
    # Assume the script is run from the target directory
    cd . || exit

    # Loop through all files in the target directory
    for file in *; do
        # Skip directories and the script file itself
        if [ -d "$file" ] || [ "$file" == "automation.sh" ]; then
            continue
        fi

        # Get the base name of the file (without extension)
        base_name="${file%.*}"

        # Skip creating a directory named 'automation'
        if [ "$base_name" == "automation" ]; then
            continue
        fi

        # Create a directory with the base name if it doesn't exist
        if [ ! -d "$base_name" ]; then
            mkdir "$base_name"
        fi

        # Move the file into the corresponding directory
        mv "$file" "$base_name/"
    done
}

# Main loop to check and organize files every 5 seconds
while true; do
    organize_files
    sleep 5
done

