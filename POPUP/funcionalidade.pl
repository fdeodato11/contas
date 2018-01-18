#!C:/Perl/bin


use Tk;
my $mw = MainWindow->new;
$mw->title("Auxiliar de Contas");
$mw->Button(-text => "TESTE", -command => sub { exit })->pack;
MainLoop;