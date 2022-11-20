#Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
USER_PATH=$(pwd)

echo '# Set PATH, MANPATH, etc., for Homebrew.' >> $USER_INPUT/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $USER_INPUT/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

#Set Up Git config

git config --global user.name mijolae

git config --global user.email [EMAIL HERE]


#Install OhMyZsh with default configs (can be edited later)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Be sure to edit ~/.zshrc file with 'export PATH=$PATH:/opt/homebrew/bin'