#!/bin/bash

target_dir="./Downloads"


organize_files() {
    
    if cd "$target_dir"; then
        echo "Successfully changed to directory: $target_dir"
    else
        echo "Failed to change directory to: $target_dir" >&2
        exit 1
    fi
    
    sorted=$(ls -l -d */ && ls -l -p | grep -v '/$')

    for file in *; do
	if [ -f "$file" ]; then
		case "$file" in *.epub|*.azw|*.azw3|*.mobi) 
   			 # Create Books directory if it does not exist
    			if [ ! -d Books ]; then
        			mkdir Books
    			fi
			mv "$file" Books
		esac
		case "$file" in *.mp3|*.wav|*.flac|*.aac) 
                         # Create Music directory if it does not exist
                        if [ ! -d Musics ]; then
                                mkdir Musics
                        fi 
                        mv "$file" Musics
                esac
		
		case "$file" in *.mp4|*.avi|*.flv|*.wmv|*.mov)
			# Create Movies directory if it does not exist
			if [ ! -d Movies ]; then
				mkdir Movies
			fi
			mv "$file" Movies
		esac

		case "$file" in *.pdf) 
                         # Create PDF directory if it does not exist
			if [ ! -d PDF ]; then
				mkdir PDF
			fi
			mv "$file" PDF
		esac
		case "$file" in *.jpeg|*.jpg|*.png|*.gif|*.raw|*.webp)
			# Create Picture directory if it does not exist
			if [ ! -d Pictures ]; then
				mkdir Pictures
			fi
			mv "$file" Pictures
		esac
		case "$file" in *.java*)
			# Create Java directory if it does not exist
			if [ ! -d Java ]; then
				mkdir Java
			fi
			mv "$file" Java
		esac
		if [[ "$file" != !*.* ]]; then
			#Create Others directory if it does not exist
			if [ ! -d Others ]; then
				mkdir Others
			fi
			mv "$file" Others
		fi
	fi
    done
cd ..
}

while true; do
	sleep 3 
	organize_files  
	date +"at %F %T" 
done
