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
alias cbut 'cd ~/Documents/ETUDES/IUT/Ressources/SEMESTRE-4'
alias cdot 'cd ~/.dotfiles'
alias cdl 'cd ~/Téléchargements'

# Go
alias got 'go test'
alias gor 'go test -run'
alias gob 'go build'
