if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Add go folder to the path
fish_add_path -a /usr/local/go/bin

# PURE CONFIG
set -U pure_symbol_git_unpulled_commits ""
set -U pure_symbol_git_unpushed_commits ""
set -U pure_symbol_git_dirty " "
set -U pure_symbol_title_bar_separator ""
set -U pure_color_info "cyan"
set -U pure_color_current_directory "blue"
set -U pure_color_prompt_on_success "yellow"
set -U pure_color_mute "magenta"

