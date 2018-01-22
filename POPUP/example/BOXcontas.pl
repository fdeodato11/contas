use Tk;

$mw = MainWindow->new;
$mw->title("Listbox");
# For example purposes, we'll use one word for each letter
@choices = ("Vivo Movel","Vivo 3G","Vivo IP Dedicado","Vivo Monitora","Claro 3G","Embratel Vipphone","Embratel Link Internet","Nitromidia","Planus Taxa Fixa","Planus Taxa Variavel","Konics","Engineering","DirectNet","NETVirtua");

# Create the Entry widget, and bind the do_search sub to any keypress
$entry = $mw->Entry(-textvariable => \$search)->pack(-side => "top", 
                                                     -fill => "x");
$entry->bind("<KeyPress>", [ \&do_search, Ev("K") ]);

# Create Listbox and insert the list of choices into it
my $lb = $mw->Scrolled("Listbox", -scrollbars => "osoe", 
                       )->pack(-side => "left");
$lb->insert("end", sort @choices);

$mw->Button(-text => "Exit", 
            -command => sub { exit; })->pack(-side => "bottom");
MainLoop;

# This routine is called each time we push a keyboard key.
sub do_search {
  my ($entry, $key) = @_;
  
  # Ignore the backspace key and anything that doesn't change the word
  # i.e. The Control or Alt keys 
  return if ($key =~ /backspace/i);
  return if ($oldsearch eq $search);

  # Use what's currently displayed in Listbox to search through  
  # This is a non-complicated in order search
  my @list = $lb->get(0, "end");
  foreach (0 .. $#list) {
    if ($list[$_] =~ /^$search/) {
      $lb->see($_);
      $lb->selectionClear(0, "end");
      $lb->selectionSet($_);
      last;
    }
  }
  $oldsearch = $search;
}