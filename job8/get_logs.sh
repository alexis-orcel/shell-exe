j=$ (date +%d-%m-%y)
h=$ (date +%H-%M)

fichier=number_connection_$j-$h

sudo grep -c "session opened for user alexisorcel " /var/log/auth.log | wc
-l > $fichier
tar -czf $fichier.tar.gz $fichier
mv $fichier.tar.gz /home/alexisorcel/Git/shell.exe.Job8/Backup
rm $fichier
