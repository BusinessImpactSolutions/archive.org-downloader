#!/usr/bin/perl

use strict;

my $dir = "/mnt/c/Users/sumu/public/i/india/constitution/kannada";
my $url = "https://archive.org/download/constitution-of-india/";

if ( -f './file.txt') {
	if ( open (my $file, "$dir/file.txt") ) {
		while ( my $line = <$file> ) {
			#print "$line\n"; 
			next if $line =~ /^$/;
			#next if $line =~/^constitution$/i;
			my ($name, $therest) = split(/\|/, $line, 2);
			print "$name\n";
			if (-f "$dir/$_") { 
				# donothing 
			} else {
				`wget --tries 1 "$url/$name"`;
			}
		}
	}
} else {
print "File not found\n";
}

1;


