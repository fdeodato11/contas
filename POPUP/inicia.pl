

use strict;
use warnings;
use Tk;

my $mw = new MainWindow;
$mw->geometry("229x179");
$mw->title("Auxiliar de Contas");


my $b1 = $mw -> Button(-text => 'RECEBER CONTA', -command=>\&RECEBEconta) -> pack()
;
my $b2 = $mw->Button(-text => 'ANDAR NO SISTEMA', -command => sub { exit })->pack(-side => 'top');

my $b3 = $mw->Button(-text => 'ACOMPANHAR MES', -command => sub { exit })->pack(-side => 'top');

my $b4 = $mw->Button(-text => 'MEDIA CONTAS', -command => sub { exit })->pack(-side => 'top');

my $b5 = $mw->Button(-text => "Exit",
            -command => sub { exit })->pack(-side => 'bottom', 
                                            -expand => 1,
                                            -fill => 'x');



sub RECEBEconta {
my $win2 = $mw->Toplevel();
my $b2 = $win2 -> Button (-text=>"quit", -command=>sub { exit }) -> pa
+ck();
}

MainLoop;