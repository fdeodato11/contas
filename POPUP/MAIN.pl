#!C:/Perl/bin


use Tk;
my $mw = MainWindow->new;
$mw->geometry("229x179");
$mw->title("Auxiliar de Contas");



$mw->Button(-text => 'RECEBER CONTA', -command => sub\&nextwin)->pack(-side => 'top', -fill => 'both');
$mw->Button(-text => 'ANDAR NO SISTEMA', -command => sub { exit })->pack(-side => 'top', -fill => 'both');
$mw->Button(-text => 'ACOMPANHAR MES', -command => sub { exit })->pack(-side => 'top', -fill => 'both');
$mw->Button(-text => 'MEDIA CONTAS', -command => sub { exit })->pack(-side => 'top', -fill => 'both');


$mw->Button(-text => "Exit",
            -command => sub { exit })->pack(-side => 'bottom', 
                                            -expand => 1,
                                            -fill => 'x');

sub nextwin {
my $win2 = $mw->Toplevel();
my $b2 = $win2 -> Button (-text=>"quit", -command=>sub { exit }) -> pa
+ck();
}
											
											
											
#$mw->Button(-text => "TESTE", -command => sub { exit })->pack;
MainLoop;
#$mw->Button(-text => "LEFT", -command => sub { exit })
#  ->pack(-side => 'left', -fill => 'both');

#https://docstore.mik.ua/orelly/perl3/tk/ch02_01.htm
#GEOMETRIA PERL ( BUTTONS ) 