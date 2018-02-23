#! perl -slw
use strict;
use Tk;

my $mw = MainWindow->new();
my $om = $mw->Optionmenu( 
    -options => [ [fred => 1], [bill => 2] ] 
)->pack( -side=> 'left' );
my @btns = map {
    $mw->Button( -text => $_, -pady => 2 )->pack( -side=> 'left' );
} 1 .. 8;

MainLoop;