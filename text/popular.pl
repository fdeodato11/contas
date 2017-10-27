#!C:/Perl/bin
# Put the file name in a string variable
# so we can use it both to open the file
# and to refer to in an error message
# if needed.


my $file = "temp.txt";

#apaga o antigo txt para evitar qualquer conflito
system "del $file";


# Use the open
() function to create the file.
unless(open FILE, '>'.$file) {
    # Die with error message 
    # if we can't open it.
    die "\nUnable to create $file\n";
}

# Write some text to the file.

print FILE "Contas não recebidas\n";
print FILE "---------------------\n";
print FILE "\n";
print FILE "\n";
print FILE "\n";
print FILE "Contas em requisição\n";
print FILE "---------------------\n";
print FILE "\n";
print FILE "\n";
print FILE "\n";
print FILE "Contas aguardando aprovação\n";
print FILE "---------------------\n";
print FILE "\n";
print FILE "\n";
print FILE "\n";
print FILE "Contas aprovadas\n";
print FILE "---------------------\n";
print FILE "\n";
print FILE "\n";
print FILE "\n";
print FILE "ATENÇÕES\n";
print FILE "---------------------\n";
print FILE "\n";
print FILE "\n";
print FILE "\n";

# close the file.
close FILE;