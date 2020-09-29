#!/usr/bin/perl
use strict;
use warnings;

my $course_count = 0;
my $gpa_count = 0;
foreach my $line (<STDIN>){
	chomp $line;
	if($line =~ m/([A-D].?)$/){
		$course_count++;
		$gpa_count += value($1);
	}
}
print "Total point count: $gpa_count\n";
print "Number of Courses: $course_count\n";
print ("CGPA: ",$gpa_count/$course_count,"\n");

sub value{
	my $value;
	if($_[0] eq "A+"){
		$value = 12;
	} elsif ($_[0] eq "A"){
		$value = 11;
	} elsif ($_[0] eq "A-"){
		$value = 10;
	} elsif ($_[0] eq "B+"){
		$value = 9;
	} elsif ($_[0] eq "B"){
		$value = 8;
	} elsif ($_[0] eq "B-"){
		$value = 7;
	} elsif ($_[0] eq "C+"){
		$value = 6;
	} elsif ($_[0] eq "C"){
		$value = 5;
	} elsif ($_[0] eq "C-"){
		$value = 4;
	} elsif ($_[0] eq "D+"){
		$value = 3;
	} elsif ($_[0] eq "D"){
		$value = 2;
	} elsif ($_[0] eq "D-"){
		$value = 1;
	} elsif ($_[0] eq "F"){
		$value = 0;
	}	
	return $value;
}
