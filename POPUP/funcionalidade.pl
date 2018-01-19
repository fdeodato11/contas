#!C:/Perl/bin


use Tk;
my $mw = MainWindow->new;
$mw->geometry("309x439");
$mw->title("Auxiliar de Contas");



$mw->Button(-text => 'Receber conta', -command => sub { exit })->pack;
$mw->Button(-text => 'Andar no sistema', -command => sub { exit })->pack;
$mw->Button(-text => 'Acompanhar Mes', -command => sub { exit })->pack;
$mw->Button(-text => 'Média contas', -command => sub { exit })->pack;


$mw->Button(-text => "Exit",
            -command => sub { exit })->pack(-side => 'bottom', 
                                            -expand => 1,
                                            -fill => 'x');

#$mw->Button(-text => "TESTE", -command => sub { exit })->pack;
MainLoop;


#https://docstore.mik.ua/orelly/perl3/tk/ch02_01.htm
#GEOMETRIA PERL ( BUTTONS ) 