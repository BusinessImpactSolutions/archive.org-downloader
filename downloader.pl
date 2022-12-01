#!/usr/bin/perl

=head1 Download files from Archieve.org 
	Perl Downloader 

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

=cut


if ( -f "$full_save2dir/$pipe_separated_file") {
	if ( open (my $file, "$full_save2dir/$pipe_separated_file") ) {
		while ( my $line = <$file> ) {
			#print "$line\n"; 
			next if $line =~ /^$/;
			#next if $line =~/^constitution$/i;
			my ($name, $the_rest) = split(/\|/, $line, 2);
			print "Downloading $full_url\n";
			if (-f "$full_save2dir/$name") { 
				# donothing 
			} else {
				`wget --tries 1 "$full_url/$name" -P "$full_save2dir/$name"`;
				print "\n";
			}
		}
	}
} else {
	print "File not found $full_save2dir/$pipe_separated_file\n";
}

=cut

1;


