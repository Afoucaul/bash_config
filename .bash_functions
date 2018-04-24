#!/bin/bash


whattodo() {
    find . -type f | xargs grep -In -e "TODO" | sed -En 's/([^:]*:[0-9]+):\s*(\S.*)/\1 \t\t\t\2/p'
}


# cd() {      
#     not_in_repo="true"
#     branch=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
#     if [ "$branch" != "" ]
#     then
#         not_in_repo="false"
#     fi
#     
#     builtin cd "$1"
# 
#     if [ "$not_in_repo" = "true" ]
#     then
#         branch=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
#         if [ "$branch" != "" ]
#         then
# 	    if [ "$PS1" != "$WRAPPED_PS1" ]
# 	    then
#                 wrap_prompt
# 	    fi
#             echo "Moved into git repository"
#             echo "TODO:"
#             whattodo
#         fi
#     else
#         if [ "$PS1" = "$WRAPPED_PS1" ]
#         then
#     	    wrap_prompt
#         fi
#     fi
# }
