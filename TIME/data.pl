#!C:/Perl/bin


my $stringTeste = "B02229;DirectNet  (NeoVia);11;; GBR036 ;18/10/2017;;";


$stringTeste =~ /B0\d*/;


print $&;