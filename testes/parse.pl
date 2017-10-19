use strict;
use warnings;

use Spreadsheet::ParseExcel;
use Spreadsheet::ParseExcel::SaveParser;

my $excel_file_name = $ARGV[0];
my $parser          = Spreadsheet::ParseExcel::SaveParser->new();
my $workbook_orig   = $parser->Parse($excel_file_name);

# We will edit column 7 of the first worksheet.
my $worksheet = $workbook_orig->worksheet(0);
my $EDIT_COL = 6;

my ($row_min, $row_max) = $worksheet->row_range();
for my $r ($row_min .. $row_max){
    my $cell = $worksheet->get_cell($r, $EDIT_COL);
    unless (defined $cell){
        next; # Modify as needed to handle blank cells.
    }
    my $val = $cell->value . '_append_text';
    $worksheet->AddCell( $r, $EDIT_COL, $val, $cell->{FormatNo} );
}

# You can save the modifications to the same file, but when
# you are learning, it's safer to write to a different file.
$excel_file_name =~ s/\.xls$/_new.xls/;
$workbook_orig->SaveAs($excel_file_name);