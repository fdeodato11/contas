#!C:/Perl/bin


# Should always include these
use strict;
use warnings;

my @lines; # Hold the lines you want

open (my $file, '<', 'Controlede_Contas_TI_mensal.csv') or die $!; # Open the file for reading
while (my $line = <$file>)
{
  next if $line =~ m/^#/; # Look at each line and if if isn't a comment
  push (@lines, $line);   # we will add it to the array.
}
close $file;


print $lines[2]; # posição que deve iniciar o array


#foreach (@lines) # Print the values that we got
#{
#open (MYFILE, '>>teste.txt');
  
#  print MYFILE "$_\n";
#}
#close (MYFILE);

#3 POSIÇÃO DO ARRAY