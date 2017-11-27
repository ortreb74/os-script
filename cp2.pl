#!/usr/bin/perl
use strict; 
use warnings; 

# je crée le fichier data1 pour avoir un montage
# ls /data1/efl3-tnr-projet/tnr-backup/input-meta > input.txt

my $source_dir = "/e8/webbuint/uaur/papi-ur/";

my $fh;
open $fh, "input.txt";

for (<$fh>) {	
	chomp;
	my $command_line = "cp $source_dir$_ /data1/efl3-tnr-projet/tnr-input";
	system($command_line);
	print "$command_line\n"
}


