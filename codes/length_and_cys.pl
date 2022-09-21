#!/usr/bin/env perl

=head1 NAME

length_and_cys.pl - evaluates "length and Cys residues" from protein file

=head1 DESCRIPTION

This script is part of the effector prediction. The script scans the protein file obtained from the user, gets probable effectors.

=head1 AUTHOR

Gisel Carreón, E<lt>carreon.gisel@gmail.com<gt>.
Blondy Canto, E<lt>blondy.canto@cicy.mx<gt>.

=head1 DATE

21 - 09 -2022

=cut

#######script for each sequence length into a fasta file ##########

use strict;
use diagnostics;
use warnings;

##### declare and open the file

my $FA   = "$ARGV[0]";
my $OUT = "$ARGV[1]";
my $conta='0';

open FA, $FA or die "Can't open file for reading: $!";
open OUT, "+>$OUT" or die "Can't open file for writing: $!";
# Set the input record separator
$/ = "\n>";
# Print header

while(my $chunk = <FA>){
    # Remove > in the first chunk
    $chunk =~ s/^>//;
    # Remove \n> from the end of the chunk
    chomp $chunk;
    # Assign ID and seq to two variables
    my ($Id, $seq) = split(/\n/, $chunk, 2);
    # Remove \n in the string
    $seq =~ s/\n//g;
    # Calculate the length of sequence.
    my $seq_length = length $seq;
    # subroutine for Cys count
    my$contar=&contar($Id, $seq);
    # Print ID and length of the sequence.
    print OUT qq (ID=$Id\tLENGTH=$seq_length\tC=$contar\n);
	

}#while

close FA;
close OUT;

###### 
sub contar {
	my$enca=$_[0];
	my$secu=$_[1];
	my$conta=0;
	my@array=split//, $secu;
	foreach my$aa (@array) {
		if ($aa eq 'C') {
			$conta++;
		}#fi
	}#foreach
return ($conta);
}#contar
