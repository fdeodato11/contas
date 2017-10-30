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

sub Criatxt {
my $file1 = "semReceb.txt";
my $file2 = "semReq.txt";
my $file3 = "aguarAprov.txt";
my $file4 = "ctsAprova.txt";
my $file5 = "Atencao.txt";

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


unless(open FILE, '>'.$file2) {
    # Die with error message 
    # if we can't open it.
    die "\nUnable to create $file\n";
}

# Write some text to the file.

print FILE "Contas em requisição\n";
print FILE "---------------------\n";

close $file2;

unless(open FILE, '>'.$file3) {

    # Die with error message 
    # if we can't open it.
    die "\nUnable to create $file\n";
}

# Write some text to the file.

print FILE "Contas aguardando aprovação\n";
print FILE "---------------------\n";

close $file3;

unless(open FILE, '>'.$file4) {
    # Die with error message 
    # if we can't open it.
    die "\nUnable to create $file\n";
}

# Write some text to the file.

print FILE "Contas aprovadas\n";
print FILE "---------------------\n";

close $file4;

unless(open FILE, '>'.$file5) {
    # Die with error message 
    # if we can't open it.
    die "\nUnable to c reate $file\n";
}

# Write some text to the file.

print FILE "ATENÇÕES\n";
print FILE "---------------------\n";


close $file5;
	
	}
	
	Criatxt();