#!C:/Perl/bin

($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
	my $dia = $mday;
	
	
my $stringTeste = "B00922;VivoG;25;;GBR036;18;19;19;";


$stringTeste =~ /B0\d*;(\w*);(\d*);;GBR\d*;(\d*);(\d*);(\d*);(\d*)/;



#print $1;   # Nome da conta	
#print $2;	# Data de vencimento
#print $3;	# Data de recebimento da conta
#print $4;   # Data de criação de requisição
#print $5;   # Data de criação de pedido
#print $6;   # Data da ultima aprovação
 

#If a partir da data de criação da requizição

	if ( $4 == null) {
		my $semReq = $dia-$3;
		print "Conta ".$1." recebida mas sem requisicao ha  " . $semReq. " dias." ;
		} elsif ( $5 == null){ 
			my $semPed = $dia-$4;
			print "Conta ".$1." sem pedido ha " . $semPed . " dias." ;			
				} elsif ( $6 == null) {
					my $semApr = $dia-$5;
					print "Conta ".$1." esperando aprovacao ha " . $semApr . " dias." ;
						}
#	if ( $6 == null) {
#		print $dia-$5. " dias em aprovacao!!!";}
#		elsif ($5 == null){
#			print $dia-$4. " dias sem criação do pedido!!!";}
			
		
		
		
		
		