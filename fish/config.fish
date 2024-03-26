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

