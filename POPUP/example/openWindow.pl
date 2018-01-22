

use strict;
use warnings;
use Tk;

my $win = new MainWindow;
my $b1 = $win -> Button (-text=>"next", -command=>\&nextwin) -> pack()
;

sub nextwin {
my $win2 = $win->Toplevel();
my $b2 = $win2 -> Button (-text=>"quit", -command=>sub { exit }) -> pa
+ck();
}

MainLoop;