#-------------------------Download File Organize Automation-----------------------
#-	                        						 -
#This shell script will run automaticThis shell script will automatically
#organize files into their respective directories based on their
#file types every 3 seconds. It runs in the background of 
#our computer, so whenever we download a file to our 
#download directory, it automatically places it into the appropriate 
#directory—such as music, movies, or books—depending on its file type. 
#While I have set it to organize files every 3 seconds for this test, in real 
#life, I will configure it to run daily instead. This adjustment is because 
#some files we may use immediately after downloading, and I prefer not 
#to spend time determining their type or searching for their directory
#
#
#I created a directory named Downloads as an example, which will 
#contain all the files we download.

#To run this script, we will execute this command 
#-----sh organize.sh ------
#and we will see it running every 3 seconds, like this:
#
#...ubuntu@primary:~/github/cs131/a2$ sh organize.sh
#...Successfully changed to directory: ./Downloads
#...at 2024-07-02 18:12:21
#...Successfully changed to directory: ./Downloads
#...at 2024-07-02 18:12:24
#...Successfully changed to directory: ./Downloads
#...at 2024-07-02 18:12:27
#
#
#To test it, we can create some example file types in the Downloads directory, such as .mp4, .mp3, .pdf, ..."
#
