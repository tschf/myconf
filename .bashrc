
# Custom files configuration
for file in ~/.{functions,env,aliases,bash_prompt}
do

    if [[ -f $file ]] && [[ -r $file ]]
    then
        source $file
    fi

done
