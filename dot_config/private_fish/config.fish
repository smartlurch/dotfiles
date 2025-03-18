if status is-interactive
    # Commands to run in interactive sessions can go here
end
zoxide init fish | source
eval (dircolors /home/lurch/.dir_colors/dircolors | head -n 1 | sed 's/^LS_COLORS=/set -x LS_COLORS /;s/;$//')
