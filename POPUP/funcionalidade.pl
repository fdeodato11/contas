#!C:/Perl/bin


my $toolbar = $mw->Frame->pack(qw/-fill x -expand 1/);
my $file = $toolbar->Menubutton(
    -text   => 'File',
    -relief => 'raised',
);
$file->pack(qw/-side left/);;

my $menu = $file->Menu(-tearoff => 0, -menuitems => [
    [qw/command ~New/],
    '',
    [qw/command ~Open/],
    '',
    [qw/command ~Save/],
    '',
    [qw/command ~Close/],
    '',
    [qw/command ~Quit/, -command => \&exit],
]);
$file->configure(-menu => $menu);

my $menu_index = 0;
my $cursor = $toolbar->LabOptionmenu(
    -label    => 'menu_index',
    -labelPack => [qw/-side left/],
    -variable => \$menu_index,
    -options  => [(0, 2, 4, 6, 8)],
);
$cursor->pack(qw/-side right/);