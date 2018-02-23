#!/usr/local/bin/perl
use Tk;
use Tk::LabFrame;
use Tk::ROText;

#Global Variables


# Main Window
my $mw = new MainWindow;

#Primeira fileira de botões
my $frm_1 = $mw -> Frame();
my $but_recebe = $frm_1 -> Button(-text => 'RECEBER CONTA', -command => sub { exit })->pack(-side => 'left', 
                                            -expand => 1,
                                            -fill => 'x');
my $but_avanca = $frm_1 -> Button(-text => 'AVANCAR CONTA NO SISTEMA', -command => sub { exit })->pack(-side => 'right', 
                                            -expand => 1,
                                            -fill => 'x');

#Segunda fileira de botões
my $frm_2 = $mw -> Frame();
my $but_mes = $frm_2 -> Button(-text => 'ACOMPANHAR MES', -command => sub { exit })->pack(-side => 'left', 
                                            -expand => 1,
                                            -fill => 'x');;
my $but_media = $frm_2 -> Button(-text => 'MEDIA DAS CONTAS', -command => sub { exit })->pack(-side => 'right', 
                                            -expand => 1,
                                            -fill => 'x');

#Terceira fileira de botões
my $frm_3 = $mw -> Frame();
my $but_relatorio = $frm_3 -> Button(-text => 'RELATORIO CC', -command => sub { exit })->pack(-side => 'left', 
                                            -expand => 1,
                                            -fill => 'x');
my $but_alerta = $frm_3 -> Button(-text => 'ALERTAS', -command => sub { exit })->pack(-side => 'right', 
                                            -expand => 1,
                                            -fill => 'x');

#SAIR



#Geometry Management
$but_recebe -> grid(-row=>1,-column=>1);
$but_avanca -> grid(-row=>1,-column=>2);
$frm_1 -> grid(-row=>1,-column=>1,-columnspan=>2);

$but_mes -> grid(-row=>1,-column=>1);
$but_media -> grid(-row=>1,-column=>2);
$frm_2 -> grid(-row=>2,-column=>1,-columnspan=>2);

$but_relatorio -> grid(-row=>1,-column=>1);
$but_alerta -> grid(-row=>1,-column=>2);
$frm_3 -> grid(-row=>3,-column=>1,-columnspan=>2);




MainLoop;