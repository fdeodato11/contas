#!C:/Perl/bin

($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
	my $dia = $mday;
	
	
my $stringTeste = "B00922;VivoG;25;;GBR036;18;19;20;26";


$stringTeste =~ /B0\d*;(\w*);(\d*);;GBR\d*;(\d*);(\d*);(\d*);(\d*)/;



#print $1;   # Nome da conta	
#print $2;	# Data de vencimento
#print $3;	# Data de recebimento da conta
#print $4;   # Data de criação de requisição
#print $5;   # Data de criação de pedido
#print $6;   # Data da ultima aprovação



#If de 
	
	






	if ( $6 != null) {
		print $6-$5. " dias para aprovacao";}
		else {
		print $dia-$5. " dias em aprovacao!!!";}
		
		
		
		