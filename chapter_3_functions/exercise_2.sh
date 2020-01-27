if [ "$#" -eq 0 ]; then
    echo "Illegal number of parameters"
fi

VARIABLES=$@
echo "Here are the folders you requested: $VARIABLES"

count_files() {
  for FOLDER in $VARIABLES; do
    cd $FOLDER
    local NUMBER_OF_FILES=$(ls -l | wc -l)
    echo "There are $NUMBER_OF_FILES in $FOLDER"
  done 
}

count_files

