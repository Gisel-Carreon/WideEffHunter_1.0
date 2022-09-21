#!/usr/bin/env perl

=head1 NAME

motif_fdr.pl - evaluates "motifs" from protein file

=head1 DESCRIPTION

This script is part of the effector prediction. The script scans the protein file obtained from the user, gets probable effectors.

=head1 AUTHOR

Gisel Carreón, E<lt>carreon.gisel@gmail.com<gt>.
Blondy Canto, E<lt>blondy.canto@cicy.mx<gt>.

=head1 DATE

21 - 09 -2022

=cut


use strict;
use diagnostics;
use warnings;

##files

my $list = "$ARGV[0]";
my $fasta ="$ARGV[1]";
my $out = "$ARGV[2]";

my %select;
open L, "$list" or die;

while (<L>) {
    chomp;
    s/>//g;
    $select{$_} = 1;
}
close L;

$/ = "\n>";
open O, ">$out" or die;
open F, "$fasta" or die;
while (<F>) {
    s/>//g;
    my ($id) = split (/\n/, $_);
    print O ">$_" if (defined $select{$id});
}
close F;
close O;
