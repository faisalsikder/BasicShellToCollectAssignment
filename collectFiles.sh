# By Faisal Sikder
# University of Miami
# Code to collect files from all students account

if [ $# -ne 1 ] ; then
  echo "One parameter needed, which is the Lab number, e.g. \"Lab1\""
else
  mkdir -p ~/$1
  for i in `cat ~/class419_list`
  do
    mkdir -p ~/$1/$i
    scp -r $i@lee:$1/* ~/$1/$i/ || echo "problem with $i"
  done
fi

