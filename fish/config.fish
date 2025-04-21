# Aliases
if [ -f $HOME/.config/fish/aliases.fish ]
    source $HOME/.config/fish/aliases.fish
end

# Add bin directories to the path
fish_add_path -a /usr/local/go/bin
fish_add_path -a /usr/local/kotlinc/bin

# PURE CONFIG
set -U pure_symbol_git_unpulled_commits "󰜮"
set -U pure_symbol_git_unpushed_commits "󰜷"
set -U pure_symbol_git_dirty " "
set -U pure_symbol_title_bar_separator ""
set -U pure_color_info "cyan"
set -U pure_color_current_directory "blue"
set -U pure_color_prompt_on_success "yellow"
set -U pure_color_mute "magenta"



# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/thomas/.opam/opam-init/init.fish' && source '/home/thomas/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true
# END opam configuration
