#!/usr/bin/perl -w
use strict; 
use warnings;
use File::Find;


find({ wanted => \&process_file, no_chdir => 1 }, '/var/www/html/rnd/output');

sub process_file {
    if (-f $_) {
    #    my $name = $_;
    #     print "This is a file: $_\n";

my $name = $_;
my $fname = '/var/www/html/rnd/fname.txt';

open(FH, '>>', $fname) or die $!;

print FH $name."\n";

close(FH);
    }
}


my $filename = '/var/www/html/rnd/fname.txt';
open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";
 
while (my $row = <$fh>) {
  chomp $row;
  print "$row\n";
}