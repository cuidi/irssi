#!/usr/bin/perl -w

while(<>) {
	if(m!/\*.SYNTAX\:! || $tt) {
		s!^\s+! !;
		if (m#\*/#) {
			$tt=0;
		} else {
			$tt=1;
			chomp;
		}
		print;
	}
}
