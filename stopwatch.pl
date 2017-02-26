#!/usr/bin/perl
use strict;
use warnings;
use Time::HiRes qw (time usleep);

my $start = time();
my $watch = 0;
print "hh:mm:ss\n";
while(1){
	$watch = time() - $start;
	printf("%02d:%02d:%02d.%01d   \r", 
		$watch / 3600., 
		$watch / 60. - 60 * (int($watch / 3600.)),
		$watch - 60 * (int($watch / 60. - 60 * (int $watch / 3600.))),
		($watch - (int $watch)) * 10
	);
	usleep(300);
}
