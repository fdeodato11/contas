


use Tk;
use Tk::LabFrame;
use Tk::ROText;


my $mw = new MainWindow;
$mw->geometry("229x179");
$mw->title("Auxiliar de Contas");


my $b1 = $mw -> Button(-text => 'RECEBER CONTA', -command=>\&RECEBEconta) -> pack(-side => 'top')
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
	my $f1 = $win2 -> LabFrame(
        -label      => "CONTA:",
        -font       => 'ukai',
        -labelside  => "acrosstop",
        )->pack();
		$f1->Entry(-background => 'black', -foreground => 'white')->pack(-side => "bottom");
		$f1->Label(-text => "VALOR")->pack(-side => "bottom");

	
my @list = ("Vivo Movel","Vivo 3G","Vivo IP Dedicado","Vivo Monitora","Claro 3G","Embratel Vipphone","Embratel Link Internet","Nitromidia","Planus Taxa Fixa","Planus Taxa Variavel","Konics","Engineering","DirectNet","NETVirtua");

$lb = $f1 -> Scrolled("Listbox",
        -scrollbars    => "e",
        -selectmode    => "extended",
        -font          => 'ukai',
        -activestyle   => "dotbox",
        )->pack();
$lb->insert('end',@list);


$lb -> bind('<Double-1>'=> sub {
        my $current_ip =  $_[0]->get($_[0]->curselection),;
        print $current_ip;
               },
        );

#LISTBOX-----------------------------------------------------

}

MainLoop;

sub GUI_OPEN_NETLIST
{
    $component_dialog->Show();
}