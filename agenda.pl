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
#
#

use strict;
use warnings;

	#Le o excel e coloca em um array
	use Spreadsheet::Read qw(ReadData);	
	my $agenda = ReadData ('Controlede_Contas_TI.xlsx');
	
	
	#Faz o sistema identificar as datas 
	
	($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
	$dia = $mday;
	my $contador = 0;
	my $venciTB = 3;
	my $nomeConta = 3; 	
	#print 'Vivo Assinatura Mensal: ' . $agenda->[1]{C3};

#Com a data do dia já em uma variavél, o script ira identificar as proximas fatas de vencimento bem como as 
#anteriores para o usuário fazer um double check se a mesma já foi paga. 

	#print "teste";
	#print $agenda->[1]{C.$venciTB};
			#if ( $dia > 31) {
				while($contador <16) {
					if ($agenda->[1]{C.$venciTB} >= $mday ) {
		print "\n";
		print  $agenda->[1]{B.$nomeConta} . '---- vencimento ->' . $agenda->[1]{C.$venciTB};
		}
		$venciTB++;
		$nomeConta++;
		$contador++;	
		}#}
	
	