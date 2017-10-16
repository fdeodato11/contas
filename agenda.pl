#!C:/Perl/bin

	use Spreadsheet::Read qw(ReadData);	
	my $agenda = ReadData ('Controlede_Contas_TI.xlsx');
	
	
	print 'Vivo Assinatura Mensal: ' . $agenda->[1]{C3};
	
	#print "teste";
	
	
	