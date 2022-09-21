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


chomp( my $fasta_file = <$ARGV[0]> );
chomp( my $mot_file = <$ARGV[1]> );
chomp( my $out_file = <$ARGV[2]> );

open my $out_fh, '>', $out_file || die qq {Unable to open "$out_file" for output: $!};

my @mot_records = do {
    open my $mot_fh, '<', $mot_file or die qq{Unable to open "$mot_file" for input: $!};
    <$mot_fh>;
};
chomp @mot_records; # Remove all newlines

{
    open my $fasta_fh, '<', $fasta_file or die qq{Unable to open "$fasta_file" for input: $!};
    local $/ = "\n>"; # Reading FASTA format now
    while ( <$fasta_fh> ) {
        chomp;  
        my ( $header, $seq ) = split /\n/;
        $header =~ s/^>?/>/; 
        for ( @mot_records ) {
         
            my ( $id, $mot ) = split /\t/;
      
          
            if ($seq=~ m/$mot/){

            print $out_fh "$header\t$id\n";

        }
    }
    }
} # local $/ expires here

close $out_fh or die $!;
