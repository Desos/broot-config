# Broot navigation function for fish shell
function br --description "Launch broot file manager with command execution"
    set -l cmd_file (mktemp)
    if broot --outcmd $cmd_file $argv
        set -l cmd (cat $cmd_file)
        command rm -f $cmd_file
        eval $cmd
    else
        set -l code $status
        command rm -f $cmd_file
        return $code
    end
end