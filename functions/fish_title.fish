# Customized from the default definition.
function fish_title
    # emacs' "term" is basically the only term that can't handle it.
    if not set -q INSIDE_EMACS; or string match -vq '*,term:*' -- $INSIDE_EMACS
        # An override for the current command is passed as the first parameter.
        # This is used by `fg` to show the true process name, among others.
        echo (set -q argv[1] && echo $argv[1] || status current-command) [(fish_prompt_pwd_dir_length=1 prompt_pwd)]
    end
end
