
# Custom files configuration
for file in ~/.{functions,env,private_env,aliases,sql_aliases}
do

    if [[ -f $file ]] && [[ -r $file ]]
    then
        source $file
    fi

done
