#From: http://stackoverflow.com/a/2951707/6069
#
#NOTE: trailing space before the closing double-quote (") is a must!!
function tinypwd(){                                                             
    PS1="$(echo $PS1 | sed 's/\\w/\`shortpwd\`/g') "
}                                                                               

function hugepwd(){                                                             
    PS1="$(echo $PS1 | sed 's/[`]shortpwd[`]/\\w/g') "                            
} 

