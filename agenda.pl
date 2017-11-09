#!C:/Perl/bin
#
# versao --
#
# NOME
#   agenda.pl
#
# DESCRICAO
#   Auxilia no dia a dia para não perder o vencimento de nenhuma conta da área de Comunicação e TI
#
# NOTA
#   uma saída em txt com dados importantes para o acompanhamento será gerado.(não implementado)
#
#
#  MODIFICADO_POR  (DD/MM/YYYY)
#  felipe.deodato     16/10/2017 - Primeira versao.

#Faz o sistema identificar as datas
	($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();

#variaveis
my $file1 = "semReceb.txt";
my $file2 = "semReq.txt";
my $file3 = "semPed.txt";
my $file4 = "aguarAprov.txt";
my $file5 = "ctsAprova.txt";
my $file6 = "atencao.txt";
my $line;
my $file;
my $dia = $mday;
my $contador = 0;	
my $array = 2; 
my $semCont;	
my $semReq;
my $semPed;
my $semApr;
my $linhateste;

#Deleta txt existentes e cria novos
sub Criatxt {


#apaga o antigo txt para evitar qualquer conflito
system "del ".$file1;
system "del ".$file2;
system "del ".$file3;
system "del ".$file4;
system "del ".$file5;

#criação txt semReceb.txt 
unless(open FILE, '>'.$file1) {
    # Die with error message 
    # if we can't open it.
    die "\nUnable to create $file\n";
}

# Write some text to the file.

print FILE "Contas não recebidas\n";
print FILE "---------------------\n";

close $file1;

print "criado 1";

unless(open FILE, '>'.$file2) {
    # Die with error message 
    # if we can't open it.
    die "\nUnable to create $file\n";
}

# Write some text to the file.

print FILE "Contas em requisição\n";
print FILE "---------------------\n";

close $file2;

print "criado 2";

unless(open FILE, '>'.$file3) {

    # Die with error message 
    # if we can't open it.
    die "\nUnable to create $file\n";
}

# Write some text to the file.

print FILE "Contas aguardando pedido\n";
print FILE "---------------------\n";

close $file3;

print "criado 3";

unless(open FILE, '>'.$file4) {
    # Die with error message 
    # if we can't open it.
    die "\nUnable to create $file\n";
}

# Write some text to the file.

print FILE "Contas aguardando aprovação\n";
print FILE "---------------------\n";

close $file4;

print "criado 4";

unless(open FILE, '>'.$file5) {
    # Die with error message 
    # if we can't open it.
    die "\nUnable to c reate $file\n";
}

# Write some text to the file.

print FILE "Contas aprovadas\n";
print FILE "---------------------\n";


close $file5;
print "criado 5";	

unless(open FILE, '>'.$file6) {
    # Die with error message 
    # if we can't open it.
    die "\nUnable to c reate $file\n";
}

# Write some text to the file.

print FILE "ATENÇÕES\n";
print FILE "---------------------\n";


close $file5;

	}
	
#Coloca csv em array para facilitar as comparações	
sub Arraycsv {
open ($file, '<', 'Controlede_Contas_TI_mensal.csv') or die $!; # Open the file for reading
while ( $line = <$file>)
{
  
  push (@lines, $line);   # we will add it to the array.
}
close $file;

}

#popula txt com os dados do array(csv)
sub Popula { 


		while($contador < 14) {
			$lines[$array] =~ /B0\d*;(\w*);(\d*);;GBR\d*;(\d*);(\d*);(\d*);(\d*)/;	
				

#print $1;   # Nome da conta	
#print $2;	 # Data de vencimento
#print $3;	 # Data de recebimento da conta
#print $4;   # Data de criação de requisição
#print $5;   # Data de criação de pedido
#print $6;   # Data da ultima aprovação

	
					if ($3 == null) {
			 $semCont = $2;
			 
open( FILE, '>>'.$file1) or die "\nUnable to create $file\n";
    # Die with error message 
    # if we can't open it.
	# Write some text to the file.

print FILE "Conta ".$1." não recebida -----> " .$semCont. " vencimento ." ;
print FILE "\n";

close $file1;
}		
			if ($3 != null && $4 == null) {
				 $semReq = $dia-$3;
				 
				 open( FILE, '>>'.$file2) or die "\nUnable to create $file\n";
				# Die with error message 
				# if we can't open it.
				# Write some text to the file.
				print FILE "Conta ".$1." recebida mas sem requisicao ha  " . $semReq. " dias." ;
				print FILE "\n";
				
				close $file2;
				
				} if ( $3 != null && $4 != null && $5 == null){ 
					 $semPed = $dia-$4;
					 
				open( FILE, '>>'.$file3) or die "\nUnable to create $file\n";
				# Die with error message 
				# if we can't open it.
				# Write some text to the file.
				print FILE "Conta ".$1." sem pedido ha " . $semPed . " dias."  ;
				print FILE "\n";
				
				close $file3;
							
				} if ($3 != null && $4 != null && $5 != null && $6 == null) {
							$semApr = $dia-$5;
				open( FILE, '>>'.$file4) or die "\nUnable to create $file\n";
				# Die with error message 
				# if we can't open it.
				# Write some text to the file.
				print FILE "Conta ".$1." esperando aprovacao ha " . $semApr . " dias." ;
				print FILE "\n";
				
				close $file4;
		
				} if ($3 != null && $4 != null && $5 != null && $6 != null) {
							$semApr = $dia-$5;
				open( FILE, '>>'.$file5) or die "\nUnable to create $file\n";
				# Die with error message 
				# if we can't open it.
				# Write some text to the file.
				print FILE "Conta ".$1."  aprovada dia " . $semApr ;
				print FILE "\n";
				
				close $file5;
								
		
								}
							
		$array++;
		$contador++;	
							
							}
	
		
		

}


	

Criatxt();
Arraycsv();
Popula();


