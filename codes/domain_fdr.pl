#!/usr/bin/env perl

=head1 NAME

domain_fdr.pl - evaluates "motifs" from protein file

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
chomp( my $dom_file = <$ARGV[1]> );
chomp( my $out_file = <$ARGV[2]> );
open my $out_fh, '>', $out_file || die qq {Unable to open "$out_file" for output: $!};
my @dom_records = do {
    open my $dom_fh, '<', $dom_file or die qq{Unable to open "$dom_file" for input: $!};
    <$dom_fh>;
};
chomp @dom_records; # Remove all newlines
{
    open my $fasta_fh, '<', $fasta_file or die qq{Unable to open "$fasta_file" for input: $!};
    local $/ = "\n>"; # Reading FASTA format now
    while ( <$fasta_fh> ) {
        chomp;    # Remove "">\n" from the end
        my ( $header, $seq ) = split /\n/; # Separate the two lines
        $header =~ s/^>?/>/; # Replace any chomped >
        for ( @dom_records ) {
           
            my ( $id, $dom ) = split /\t/;
    
          
            if ($seq=~ m/$dom/){
          
            print $out_fh "$header\t$id\n";
           
        }
    }
    }
} # local $/ expires here

close $out_fh or die $!;
