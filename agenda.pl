#!C:/Perl/bin

	use Spreadsheet::Read qw(ReadData);	
	my $agenda = ReadData ('Controlede_Contas_TI.xlsx');

	($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
	$dia = $mday;
	$contador = 0;
	$venciTB = 3;
	$nomeConta = 3; 	
	#print 'Vivo Assinatura Mensal: ' . $agenda->[1]{C3};
	
	print "teste";
	

		while($contador <16) {
		
		print "----------------------\n";
		print  $agenda->[1]{B.$nomeConta} . ' vencimento -' . $agenda->[1]{C.$venciTB};
		
		$venciTB++;
		$nomeConta++;
		$contador++;	
		}
	
	