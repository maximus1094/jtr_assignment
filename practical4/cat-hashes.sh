# Copy both hashfiles to current directory
cp code/jtr_assignment/practical4/john.pot .
cp .hashcat/hashcat.potfile .

mv hashcat.potfile hash.potfile

# Add both file and save to a new one
cat hash.potfile john.pot > hashcat.potfile

# Remove files
rm john.pot
rm hash.potfile

