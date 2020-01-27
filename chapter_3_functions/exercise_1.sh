if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
fi

DIR=$1

count_files() {
  cd $DIR
  local NUMBER_OF_FILES=$(ls -1q | wc -l)
  echo "There are $NUMBER_OF_FILES in $DIR"
}

count_files
