#!/usr/bin/env perl
use strict;
use warnings;
use v5.10;


##
#
# Documentation
#
##

=pod

=head1 Porting Script

=head2 Description
    This script is used to assist in porting from the original HP
    Time-Shared BASIC to a more standardized FreeBASIC. Conversions are
    defined as subroutines which can be used to do discrete translations
    to modern FreeBASIC.

=head2 Line Numbers
    Line numbers are allowed only in the -lang qb and -lang deprecated
    dialects.

=head2 Converters

=over

=item add_space:
    Add whitespace around expressions.

=item if_goto:
    Insert "GoTo" in old-school conditionals.

=item initialize_variable:
    Change from "Dim var(val)" to "Dim var = val"

=item title_case:
    Converts some all caps keywords to title case.

=back

=cut


##
#
# Converters
#
##

my $line_of_code = "";

sub add_space {
    $line_of_code =~ s/^(\d+ \w+)=(\S+)/\1 = \2/;
}

sub if_goto {
    $line_of_code =~ s/^(\d+ If .*) THEN (\d+)/\1 Then GoTo \2/;
}

sub initialize_variable {
    $line_of_code =~ s/^(\d+) Dim (\w{1,2})\((\d{1,2})\)/\1 Dim \2 = \3/;
}

sub title_case {
    my @words = (
        "Dim", "GoSub", "GoTo",
        "If", "Input", "Let",
        "On", "Print", "Rem",
    );
    # check each keyword in sequence
    foreach my $word ( @words ) {
        my $uppercase_word = uc $word;
        $line_of_code =~ s/^(\d+) $uppercase_word(.*)/\1 $word\2/;
    }
}


##
#
# Translate into FreeBASIC
#
##

sub translate_basic {
    my $filename = $ARGV[0] || "oregontrail.bas";
    open( my $fh, '<', $filename ) or die "Can't open $filename: $!";
    while ( $line_of_code = <$fh> ) {
        chomp $line_of_code;
        title_case;
        initialize_variable;
        if_goto;
        add_space;
        say $line_of_code;
    }
    close $fh;
}

translate_basic()
