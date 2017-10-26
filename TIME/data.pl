#!C:/Perl/bin


my $stringTeste = "B00922;VivoG;25;;GBR036;18;19;19;25";


$stringTeste =~ /B0\d*;(\w*);(\d*);;(GBR\d*);(\d*);(\d*);(\d*);(\d*)/;



print $1;
print $2;
print $3;
print $4;
print $5;
print $6;
print $7;
