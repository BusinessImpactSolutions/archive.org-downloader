# Archive.org Downloader 

    Archive.org eBook/PDF Downloader  

## Download files from Archive.org 

	Downoad all files of a particular book from archive.org written in Perl

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

        See 'file.txt'

## Usage 

	Open WSL Ubuntu on Windows 10/11 and cd to App Directory. 
        E.g., `/mnt/c/Users/USER/public/a/archive.org/download#`
    
        ./downloader.pl Url Dir file.txt

        ./downloader.pl RelativeURL RelativeDir file.txt

        Example:

	    ./downloader.pl India1934 i/india/in-1934 file.txt
	

## Documentation

    Alternatively, you can also do `perldoc ./download.pl` \
        from a WSL Ubuntu command line on Windows 10/11

    For details/documentation on Perl installation, 
    
        see https://github.com/bislink/PCAccessFree

## Explanation of some technical words/phrases

### App Directory

    Location of folder/directory where download.pl resides

### Destination Directory

    Location of folder/directory where you want files of a book from archive.org to be saved \
        which include files of type pdf, jpg, zip, xml, etc. 

## Related App

    https://github.com/bislink/PCAccessFree

