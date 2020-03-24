set fish_color_valid_path
set fish_color_cwd
set fish_color_user
set fish_prompt_pwd_dir_length 0

set -x GREP_OPTIONS '--color=auto'
set -x EDITOR 'vim'

function ls --description 'List contents of directory'
    set -l opt -G
            isatty stdout
            and set -a opt
            command ls $opt $argv
end

if type --quiet "fundle"
  fundle plugin 'edc/bass'
end

if type --quiet "bass"
  bass source $HOME/.dotfiles/bash/bashrc.symlink
end
