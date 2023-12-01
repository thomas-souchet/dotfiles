alias c 'clear'
alias :q 'exit'
alias mv 'mv -i'
alias reboot 'sudo /sbin/reboot'
alias .. 'cd ..'
alias ... 'cd ../..'

function mkcd
    mkdir $argv && cd $argv
end

# Directories
alias cbut 'cd ~/Documents/ETUDES/IUT/BUT-Info/'
alias cdot 'cd ~/.dotfiles'
alias cdl 'cd ~/Téléchargements'

# Go
alias got 'go test'
alias gor 'go test -run'
alias gob 'go build'
