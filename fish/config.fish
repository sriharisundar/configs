if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Add Homebrew to PATH on macOS
switch (uname)
    case Darwin
        fish_add_path /opt/homebrew/bin
end  

oh-my-posh init fish --config $HOME/.config/omp/hul10_git.omp.json | source

string match -q "$TERM_PROGRAM" "vscode"
and . (code --locate-shell-integration-path fish)
