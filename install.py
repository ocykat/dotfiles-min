import os


# === PACKAGES ===

print("======================================================")
print("==================Installing packages=================")
print("======================================================\n\n")

packages = [
    "build-essential",
    "checkinstall",
    "curl",
    "gdb",
    "tmux",
    "vim"
]

for package in packages:
    print("\n\nInstalling {0}...".format(package))
    os.system("sudo apt install {0}".format(package))


# === DOTFILES ===

print("======================================================")
print("====================Copying dotfiles==================")
print("======================================================\n\n")

# Copy dotfiles

dotfiles = [
    ['~'       , 'bash' , '.bashrc'       ] ,
    ['~/.bash' , 'bash' , '.bash_prompt'  ] ,
    ['~/.bash' , 'bash' , '.bash_profile' ] ,
    ['~'       , 'vim'  , '.vimrc'        ] ,
    ['~'       , 'tmux' , '.tmux.conf'    ] ,
]

os.system("mkdir ~/.bash")

for dotfile in dotfiles:
    os.system("cp {1}/{2} {0}/{2}")


# === VIM ===

print("======================================================")
print("====================Setting up Vim====================")
print("======================================================\n\n")


# Install vim-plug package manager
os.system("curl -JLO https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim")
os.system("mv plug.vim ~/.vim/autoload/plug.vim")

# Install packages
os.system("vim +PlugInstall +qall")


# === XFCE4-terminal ===

print("======================================================")
print("============Setting up XFCE4-Terminal ===============")
print("=====================================================\n\n")

xfce4_color_dir = "~/.config/xfce4/terminal/colorschemes"
os.system("mkdir {0}".format(xfce4_color_dir))
os.system("cp xfce4-terminal/onedark.theme {0}/onedark.theme".format(xfce4_color_dir))
