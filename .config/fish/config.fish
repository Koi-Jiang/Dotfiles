if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -gx PATH $PATH /home/emily/.cargo/bin
set -gx PATH $PATH /home/emily/.local/bin
set -gx PATH /usr/local/opt/ruby/bin $PATH 
set -gx PATH $PATH $HOME/.gem/bin
fnm env --use-on-cd | source
thefuck --alias | source
set -gx GPG_TTY (tty)

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

alias n="nvim"

# pnpm
set -gx PNPM_HOME "/Users/emily/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# Created by `pipx` on 2024-09-08 01:39:50
set PATH $PATH /Users/emily/.local/bin
