#!C:/Perl/bin


my $stringTeste = "B02229;DirectNet_(NeoVia);11;; GBR036 ;18/10/2017;;";


$stringTeste =~ /B0\d*;(\w*\W+\w*\W+);/;



print $1;