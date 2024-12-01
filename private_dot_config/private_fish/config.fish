if status is-interactive
    # Commands to run in interactive sessions can go here
    fzf --fish | source
    atuin init fish | source
    zoxide init fish | source
    starship init fish | source
end
