#!C:/Perl/bin


my $stringTeste = "B02229;DirectNet_(NeoVia);11;; GBR036 ;18;;";


$stringTeste =~ /B0\d*;(\w*\W+\w*\W+);(\d*)/;



print $1.'\n';
print $2.'\n';