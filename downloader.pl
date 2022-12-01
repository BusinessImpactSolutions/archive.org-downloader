#!/usr/bin/perl

=head1 Download files from Archive.org 

	Perl Downloader 

		Downoad all files from a particular book from archive.org

=head2 Requirements 

	Windows 10/11 PC 
	Perl 5.10+
		https://strawberryperl.com/download/5.32.1.1/strawberry-perl-5.32.1.1-64bit.msi
	WSL (Ubuntu)

=head2 How to get/set 'file.txt?'

	Example:
	
		Go to https://archive.org/details/UnderstandingCaste-FromBuddhaToAmbedkarAndBeyond
			and click SHOW ALL  
			Select all files
				Copy all files 
				Create a new file 'file.txt' in Destination Directory  
				Paste into file.txt and save it in Destination Directory 
			Replace all \t with | using VSCode, Notepad++, or notepad.
			Save file into Destination Directory 

=head2 Usage 

	root@ns21:/mnt/c/Users/sumu/public/a/archive.org/download# 
		./downloader.pl RelativeDownloadUrl RelativeSave2Dir FileName 
		./downloader.pl UnderstandingCaste-FromBuddhaToAmbedkarAndBeyond h/hinduism/caste-system/UnderstandingCaste-FromBuddhaToAmbedkarAndBeyond file.txt
		./downloader.pl Url Dir file.txt

=cut

use strict;

# set vars/urls 
my $save2dir_base = "/mnt/c/Users/sumu/public";
my $download_url_base = "https://archive.org/download";

my $download_url = $ARGV[0];
my $save2dir = $ARGV[1];
my $pipe_separated_file = $ARGV[2];

# build vars/urls 
my $full_url = "$download_url_base/$download_url";
my $full_save2dir = "$save2dir_base/$save2dir";

print "Save to: $full_save2dir;\nDownload URL: $full_url;\nFiles List: $full_save2dir/$pipe_separated_file\n\n";

=head2 Actual code 

	Checks if file already exists. Skip if exists.
	Downloads to a destination directtory set in line 51 

=cut


if ( -f "$full_save2dir/$pipe_separated_file") {
	# open file.txt 
	if ( open (my $file, "$full_save2dir/$pipe_separated_file") ) {
		while ( my $line = <$file> ) {
			# remove/skip empty lines 
			next if $line =~ /^$/;
			# get file name to download from file.txt 
			my ($name, $the_rest) = split(/\|/, $line, 2);
			# show file currently downloading 
			print "Downloading $full_url\n\n";
			# Do not download if file already exists 
			if (-f "$full_save2dir/$name") { 
				# donothing 
			} else {
				# Download file if not exists
				`wget --tries 1 "$full_url/$name" -P "$full_save2dir/$name"`;
				# add an extra after each download  
				print "\n";
			}
		}
	}
} else {
	# Show error if user provided vals are incorrect 
	print "File not found $full_save2dir/$pipe_separated_file\n\n";
	# and show usage 
	print "Usage: $0 URL DIR file.txt\n";
}


1;


