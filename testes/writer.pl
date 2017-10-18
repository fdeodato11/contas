#!C:/Perl/bin

use strict;
use warnings;
 
use Excel::Writer::XLSX;
 
my $workbook  = Excel::Writer::XLSX->new( 'Controlede_Contas_TI_mensal.xlsx' );
my $worksheet = $workbook->add_worksheet();
 
$worksheet->write( "A1", "Hi Excel!" );
$worksheet->write( "A2", "second row" );
 
$workbook->close;