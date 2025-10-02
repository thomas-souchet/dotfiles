alias c 'clear'
alias :q 'exit'
alias mv 'mv -i'
alias reboot 'sudo /sbin/reboot'
alias .. 'cd ..'
alias ... 'cd ../..'

function mkcd
    mkdir -p $argv && cd $argv
end

alias img 'kitten icat'

# Directories
alias cimag 'cd ~/Documents/ETUDES/ENSIMAG/1A'
alias cdot 'cd ~/.dotfiles'
alias cdl 'cd ~/Téléchargements'

# Go
alias got 'go test'
alias gor 'go test -run'
alias gob 'go build'

# Rust
alias cgr 'cargo run'
alias cgb 'cargo build'
alias cgt 'cargo test'

# Desactivate automatic locksreen
alias nolock 'xset -dpms && xset s off'
