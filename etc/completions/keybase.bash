# from https://github.com/keybase/client/pull/11261

_keybase()
{
    COMPREPLY=()
    local cur="${COMP_WORDS[COMP_CWORD]}"
    completions=$("${COMP_WORDS[@]:0:$COMP_CWORD}" --generate-bash-completion)
    # shellcheck disable=SC2207
    COMPREPLY=( $(compgen -W "$completions" -- "$cur") )
    return 0
}
complete -F _keybase keybase
