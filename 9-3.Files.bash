file="test.txt"
if [ -f $file ]; then
  echo "File exists, removing"
  rm -r $file
fi  
echo "this is a test">>$file
cat $file
