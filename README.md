# Archive.org Downloader 

    Perl Downloader  

## Download files from Archive.org 

	Downoad all files from a particular book from archive.org

## Requirements 

	Windows 10/11 PC 
	Perl 5.10+
		https://strawberryperl.com/download/5.32.1.1/strawberry-perl-5.32.1.1-64bit.msi
	WSL (Ubuntu)

## How to get/set 'file.txt?'

	Example:
	
		Go to https://archive.org/details/UnderstandingCaste-FromBuddhaToAmbedkarAndBeyond
			and click SHOW ALL  
			Select all files
				Copy all files 
				Create a new file 'file.txt' in Destination Directory  
				Paste into file.txt and save it in Destination Directory 
			Replace all \t with | using VSCode, Notepad++, or notepad.
			Save file into Destination Directory 

## Usage 

	root@ns21:/mnt/c/Users/sumu/public/a/archive.org/download# 
		./downloader.pl RelativeDownloadUrl RelativeSave2Dir FileName 
		./downloader.pl UnderstandingCaste-FromBuddhaToAmbedkarAndBeyond h/hinduism/caste-system/UnderstandingCaste-FromBuddhaToAmbedkarAndBeyond file.txt
		./downloader.pl Url Dir file.txt

## Documentation

    Alternatively, you can also do `perldoc ./download.pl` from a WSL Ubuntu command line on Windows 10/11

