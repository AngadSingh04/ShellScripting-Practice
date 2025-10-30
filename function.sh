<<comment
file for 
functions along with arguments
comment

function demo(){
    name=$1

    if [[ $name == "angad" ]];
    then
        echo "correct"
    else
        echo "wrong"
    fi
}

demo junior