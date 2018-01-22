

use strict;
use warnings;
use Tk;

my $mw = new MainWindow;
my $b1 = $mw -> Button(-text => 'RECEBER CONTA', -command=>\&nextwin) -> pack()
;
my $b2 = $mw->Button(-text => 'ANDAR NO SISTEMA', -command => sub { exit })->pack(-side => 'top', -fill => 'both');

my $b3 = $mw->Button(-text => 'ACOMPANHAR MES', -command => sub { exit })->pack(-side => 'top', -fill => 'both');

my $b4 = $mw->Button(-text => 'MEDIA CONTAS', -command => sub { exit })->pack(-side => 'top', -fill => 'both');

sub nextwin {
my $win2 = $mw->Toplevel();
my $b2 = $win2 -> Button (-text=>"quit", -command=>sub { exit }) -> pa
+ck();
}

MainLoop;