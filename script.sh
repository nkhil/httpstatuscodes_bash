curl -N -s https://httpstatuses.com/$1 > tmp_file
grep '<h>' tmp_file > tmp.txt
# cat tmp.txt

# grep -o -m1 '<h1.*/h1>' tmp_file

sed -n "/<h1>/,/<\/p>/p" tmp_file

