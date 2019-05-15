import os


def copy_dotfiles(dotfiles, abs_dir='~'):
    for x in dotfiles:
        if x[0] == '':
            os.system("mkdir -p {0}".format(abs_dir))
            os.system("cp {1}/{2} {0}/{2}".format(abs_dir, x[1], x[2]))
        else:
            os.system("mkdir -p {0}/{1}".format(abs_dir, x[0]))
            os.system("cp {2}/{3} {0}/{1}/{3}".format(abs_dir, x[0], x[1], x[2]))
        print("Copying {0}".format(x[2]))


# === PACKAGES ===
print("=============== INSTALLING PACKAGES =================")

packages = [
    "build-essential" ,
    "checkinstall"    ,
    "cmake"           ,
    "curl"            ,
    "dkms"            ,
    "gdb"             ,
    "i3"              ,
    "libncurses5-dev" ,
    "libssl-dev"      ,
    "kernel-package"  ,
    "openssl"         ,
    "python3-dev"     ,
    "tmux"            ,
    "vim"             ,
    "xfce4-terminal"  ,
    "xorg"            ,
    "xorg-xinit"
]

for package in packages:
    print("\n\nInstalling {0}...".format(package))
    os.system("sudo apt install -y {0} ".format(package))


# === DOTFILES ===
print("=============== COPYING DOTFILES =================")

# Bash
print("-> Bash...")
os.system("mv ~/.bashrc ~/.bashrc_default")

bash_dotfiles = [
    [''      , 'bash' , '.bashrc'       ] ,
    ['.bash' , 'bash' , '.bash_prompt'  ] ,
    ['.bash' , 'bash' , '.bash_profile' ]
]

copy_dotfiles(bash_dotfiles, abs_dir='~')

# Vim
print("-> Vim...")
vim_dotfiles_0 = [
    ['', 'vim', '.vimrc']
]
copy_dotfiles(vim_dotfiles_0, abs_dir='~')

vim_dotfiles_1 = [
    ['autoload'   , 'vim'       , 'plug.vim'           ] ,
    ['custom/ycm' , 'vim'       , '.ycm_extra_conf.py' ] ,
    ['vimrc'      , 'vim/vimrc' , 'plugins.vim'        ]
                                                       ]
copy_dotfiles(vim_dotfiles_1, abs_dir='~/.vim')

os.system("vim +PlugInstall +qall")

vim_dotfiles_2 = [
    ['' , 'vim/vimrc' , 'editor.vim'   ] ,
    ['' , 'vim/vimrc' , 'keymap.vim'   ] ,
    ['' , 'vim/vimrc' , 'specific.vim' ] ,
    ['' , 'vim/vimrc' , 'theme.vim'    ]
]
copy_dotfiles(vim_dotfiles_2, abs_dir='~/.vim/vimrc')

# Tmux
print("-> Tmux...")
tmux_dotfiles = [
    ['', 'tmux', '.tmux.conf']
]
copy_dotfiles(tmux_dotfiles, abs_dir='~')

# XFCE4
print("-> XFCE4 terminal...")
xfce4term_dotfiles = [
    ['colorschemes' , 'xfce4-terminal' , 'onedark.theme'    ] ,
    ['colorschemes' , 'xfce4-terminal' , 'jellybeans.theme' ] ,
    [''             , 'xfce4-terminal' , 'terminalrc'       ]
]
copy_dotfiles(xfce4term_dotfiles, abs_dir='~/.config/xfce4/terminal')

print("You may want to reload xfce4-terminal now...")
print("Done")
