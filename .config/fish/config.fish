if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -gx PATH $PATH /home/emily/.cargo/bin
set -gx PATH $PATH /home/emily/.local/bin
fnm env --use-on-cd | source
thefuck --alias | source
set -gx GPG_TTY (tty)
