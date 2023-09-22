
# Custom files configuration
for file in ~/.{functions,work_functions,env,private_env,work_env,aliases,work_aliases}
do

    if [[ -f "$file" ]] && [[ -r "$file" ]]
    then
        source "$file"
    fi

done
