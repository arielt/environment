# ~/.zshrc

# >>> setup prompt >>>

# set git username if in git repository
function git_username()
{
  username="$(git config user.name)"
  if [[ $username == '' ]];
  then
    :
  else
    echo ''$username''
  fi
}

# set branch name if in git repository.
function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == '' ]];
  then
    :
  else
    echo ''$branch''
  fi
}

setopt prompt_subst
prompt='$(git_username)/$(git_branch_name) %1~ %# '

# <<< setup prompt <<<

# ...

# >>> setup prompt >>>

# remove (base) set by conda
PROMPT=$(echo $PROMPT | sed 's/(base) //')

# <<< setup prompt <<<
