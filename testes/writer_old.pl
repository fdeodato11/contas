#!C:/Perl/bin

use strict;
use warnings;
 
use Excel::Writer::XLSX;
 
my $file = "Controlede_Contas_TI_mensal.xlsx";
my $workbook = Excel::Writer::XLSX->open($file);
my $worksheet = $workbook->add_worksheet();
 
$worksheet->write( "A1", "Hi Excel!" );
$worksheet->write( "A2", "second row" );
 
$workbook->close;