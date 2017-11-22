#!C:/Perl/bin
#
# versao 1.0.0
#
# NOME
#   agenda.pl
#
# DESCRICAO
#   Auxilia no dia a dia para não perder as datas de vencimento de nenhuma conta da área de Comunicação e TI
#
# NOTA
#   uma saída em txt com dados importantes para o acompanhamento será gerado.
#
#
#  MODIFICADO_POR  (DD/MM/YYYY)
#  felipe.deodato     09/11/2017 - Primeira versao.

#use strict;
#use warnings;

#Faz o sistema identificar as datas
	(my $sec,my $min,my $hour,my $mday,my $mon,my $year,my $wday,my $yday,my $isdst) = localtime();



#variaveis de nome de saida
my $file1 = "semReceb.txt";
my $file2 = "semReq.txt";
my $file3 = "semPed.txt";
my $file4 = "aguarAprov.txt";
my $file5 = "ctsAprova.txt";
my $file6 = "atencao.txt";
my $file7 = "Completo.txt";

#Variaveis para popular o array
my $line;
my $file;
my @lines;

#variavel para conta correta do dia 
my $dia = $mday;

#variaveis para popular saida
my $contador = 0;	
my $array = 2; 
my $semCont;	
my $semReq;
my $semPed;
my $semApr;


my $positivo; # deixar a diferenca sempre positiva





#ROTINAS

#Deleta txt existentes e cria novos
sub Criatxt {


#apaga o antigo txt para evitar qualquer conflito
system "del ".$file1;
system "del ".$file2;
system "del ".$file3;
system "del ".$file4;
system "del ".$file5;
system "del ".$file6;
system "del ".$file7;

print "Txt apagados\n";


unless(open FILE, '>'.$file1) {
    # Die with error message 
    # if we can't open it.
    die "\nUnable to create $file\n";
}

# Write some text to the file.
print FILE "---------------------\n";
print FILE "Contas não recebidas\n";
print FILE "---------------------\n";

close $file1;


unless(open FILE, '>'.$file2) {
    # Die with error message 
    # if we can't open it.
    die "\nUnable to create $file\n";
}

# Write some text to the file.
print FILE "---------------------\n";
print FILE "Contas em requisição\n";
print FILE "---------------------\n";

close $file2;


unless(open FILE, '>'.$file3) {

    # Die with error message 
    # if we can't open it.
    die "\nUnable to create $file\n";
}

# Write some text to the file.
print FILE "---------------------\n";
print FILE "Contas aguardando pedido\n";
print FILE "---------------------\n";

close $file3;


unless(open FILE, '>'.$file4) {
    # Die with error message 
    # if we can't open it.
    die "\nUnable to create $file\n";
}

# Write some text to the file.
print FILE "---------------------\n";
print FILE "Contas aguardando aprovação\n";
print FILE "---------------------\n";

close $file4;


unless(open FILE, '>'.$file5) {
    # Die with error message 
    # if we can't open it.
    die "\nUnable to c reate $file\n";
}

# Write some text to the file.
print FILE "---------------------\n";
print FILE "Contas aprovadas\n";
print FILE "---------------------\n";


close $file5;
	

unless(open FILE, '>'.$file6) {
    # Die with error message 
    # if we can't open it.
    die "\nUnable to c reate $file\n";
}

# Write some text to the file.
print FILE "---------------------\n";
print FILE "ATENÇÕES\n";
print FILE "---------------------\n";


close $file6;


print "Txt criados com sucesso\n";
	}
	
#Apaga pastas antigas e gera novas para evitar conflito	
sub Criapasta{ 

#Apaga pastas antigas	
system "rmdir CONTAS\\Sem_Recebimento";
system "rmdir CONTAS\\Sem_Requisicao";
system "rmdir CONTAS\\Sem_Pedido";
system "rmdir CONTAS\\Aguardando_aporovacao";
system "rmdir CONTAS\\Contas_Aprovadas";

print "Pastas excluidas com sucesso";

#Gera pastas novas
system "mkdir CONTAS";
system "mkdir CONTAS\\Sem_Recebimento";
system "mkdir CONTAS\\Sem_Requisicao";
system "mkdir CONTAS\\Sem_Pedido";
system "mkdir CONTAS\\Aguardando_aporovacao";
system "mkdir CONTAS\\Contas_Aprovadas";


print "Pastas geradas com sucesso";

}	
	
#Coloca csv em array para facilitar as comparações	
sub Arraycsv {
open ($file, '<', 'Controlede_Contas_TI_mensal.csv') or die $!; # Open the file for reading
while ( $line = <$file>)
{
  
  push (@lines, $line);   # we will add it to the array.
}
close $file;

print "array populado\n";
}

#popula txt com os dados do array(csv)
sub Popula { 

		#numero de linhas que tem no csv com informacao, trocar sempre que preciso
		while($contador < 14) {
		
		#regex para desmembrar a cada linha do csv para formatar a saida
			$lines[$array] =~ /B0\d*;(\w*);(\d*);;GBR\d*;(\d*);(\d*);(\d*);(\d*)/;	
				
#print $1;   # Nome da conta	
#print $2;	 # Data de vencimento
#print $3;	 # Data de recebimento da conta
#print $4;   # Data de criação de requisição
#print $5;   # Data de criação de pedido
#print $6;   # Data da ultima aprovação

#Calculo para deixar sempre a diferença positiva para futura comparacao
	$positivo = abs($dia-$2);

	
	
				if ($3 == null) {
				$semCont = $2;
			 
				open( FILE, '>>'.$file1) or die "\nUnable to create $file\n";
				# Die with error message 
				# if we can't open it.
				# Write some text to the file.

				print FILE "Conta ".$1." não recebida -----> " .$semCont. " vencimento ." ;
				print FILE "\n";

				close $file1;
	
				} if ($3 != null && $4 == null) {
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
							$semApr = $6;
				open( FILE, '>>'.$file5) or die "\nUnable to create $file\n";
				# Die with error message 
				# if we can't open it.
				# Write some text to the file.
				print FILE "Conta ".$1." aprovada dia " . $semApr ;
				print FILE "\n";
				
				close $file5;
								
		
				} if ($positivo < 16 && $6 == null ) {
				open( FILE, '>>'.$file6) or die "\nUnable to create $file\n";
				# Die with error message 
				# if we can't open it.
				# Write some text to the file.
				print FILE "Conta ".$1." há " . $positivo . " dias para vencimento!!!! ";
				print FILE "\n";
				
				close $file6;		
				}
		
		
		
		$array++;
		$contador++;	
							
							}
	
		
		
print "saidas populadas\n";
}

#Junta todas os txt em uma unica saida
sub Merge {
@ARGV = ('semReceb.txt', 'semReq.txt', 'semPed.txt', 'aguarAprov.txt', 'ctsAprova.txt', 'atencao.txt' );

open MULTI, '>>', 'Completo.txt' 
    or die $!;

while (<>) {
    print MULTI;

}
 print "FINALIZADO\n";
 }
	
#manipula as saidas para as respectivas pastas
sub Movetxt {

system "move semReceb.txt CONTAS\\Sem_Recebimento";
system "move semReq.txt CONTAS\\Sem_Requisicao";
system "move semPed.txt CONTAS\\Sem_Pedido";
system "move aguarAprov.txt CONTAS\\Aguardando_aporovacao";
system "move ctsAprova.txt CONTAS\\Contas_Aprovadas";

print "txt movidos com sucesso";

system "del ".$file1;
system "del ".$file2;
system "del ".$file3;
system "del ".$file4;
system "del ".$file5;

print "txt excluidos da raiz";


}
	
	
#main	
	
Criatxt();
Criapasta();
Arraycsv();
Popula();
Merge();
Movetxt();
