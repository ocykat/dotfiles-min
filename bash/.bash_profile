# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.bash_default: default bashrc
# * ~/.bash_extra: used for other settings you don’t want to commit.
# * ~/.bash_path: used to extend `$PATH`.
# * ~/.bash_prompt: for prompt
for file in ~/.{bash_default,bash_extra,bash_path,bash_prompt}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Vi mode
set -o vi

# WSL settings
if grep -q Microsoft /proc/version; then
    # Windows subsystem for Linux
    export DISPLAY=:0
else
    # Native Linux
    echo
fi
