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


## Explanation of some technical words/phrases used in this App


### App Directory

    Location of folder/directory where download.pl resides

    In my test case, it is C:/Users/SuMu/public/a/archive.org/download


### Base Directory

    Location of root directory on your PC

    In my test case, it is C:/Users/SuMu/publc


### Destination Directory

    Location of folder/directory where you want files of a book from archive.org to be saved \
        which include files of type pdf, jpg, zip, xml, etc. 

    In my test case, i/india/in-1934


### Example "file.txt" in "i/india/in-1934" (Destination Directory)

    India 1934.djvu|24-May-2014 14:15|3.6M
    India 1934.gif|24-May-2014 14:01|143.4K
    India 1934.pdf|24-May-2014 13:53|4.1M
    India 1934_abbyy.gz|24-May-2014 14:11|5.1M
    India 1934_djvu.txt|24-May-2014 14:16|342.9K
    India 1934_djvu.xml|24-May-2014 14:12|2.9M
    India 1934_jp2.zip (View Contents)|24-May-2014 14:01|14.0M
    India 1934_scandata.xml|24-May-2014 14:15|46.4K
    India1934_archive.torrent|03-Dec-2020 19:09|4.1K
    India1934_files.xml|18-Mar-2022 15:07|3.9K
    India1934_meta.sqlite|27-Jun-2016 03:02|9.0K
    India1934_meta.xml|03-Dec-2020 19:09|1.1K
    __ia_thumb.jpg|03-Dec-2020 19:09|10.0K


## Related App

    https://github.com/bislink/PCAccessFree

## Patreon

    https://patreon.com/sumu2

