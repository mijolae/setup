# My Mac Setup

This repo contains info on all the apps/tools/settings I use on my Mac.


## What Macbook do I have?
I recently purchased a 16inch 2021 Macbook Pro. 

These are the specs:
- M1 Pro Chip
- 16GB RAM
- 1TB SSD

You can check out it out [here](https://everymac.com/systems/apple/macbook_pro/specs/macbook-pro-m1-pro-10-core-cpu-16-core-gpu-16-2021-specs.html).

## Homebrew / Git Config / Terminal & Shell 
### Homebrew
[Homebrew](https://brew.sh) allows us to install tools and apps from the terminal.
To install it, open up the built in `Terminal` app and run the following command:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

This will also install any Xcode related tools we might need.

After Homebrew is done installing, we can use it to install everything else we might need.

### Git Set-Up
I am consistently using Github and Git commands for development work and one of the core parts is configuring my username and password so that I never have to enter it again.

Typically, XCode installs git but we can configure it to our liking. To set-up git, we will first make sure we have the latest version. 

```
git --version
# run the following if git is not installed
brew install git
```

Open a new tab to start using the newest version:
```
git config --global user.name mijolae
git config --global user.email [email here]
```

To connect with your account, you will have to install `gh` and go through the [auth login process](https://cli.github.com/manual/gh_auth_login). This is included in the `progammingSetup` script.

### Terminal & Shell
I prefer zsh in my Terminal. [OhMyZsh](https://ohmyz.sh/#install) was recommended to me by a coworker and I have been using that ever since. 

I prefer OhMyZsh because:
- Theme capabilities
- Amazing plugins
- Shortcuts

To set up run the following:

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Checkout their [documentation](https://github.com/ohmyzsh/ohmyzsh/wiki) for the full extent of what it can do.

Once installed, you can customize the settings however you wish. My preffed settings are:
> to be updated :)

If a one stop shop is preferred, you can run the initialSetup script by:
```
bash initialSetup.sh
```

After running `initialSetup`, open the `/.zshrc` file and add:
```
export PATH=$PATH:/opt/homebrew/bin
```
This is what I needed to add in order for the `brew` command to be recognized.

## Programming Languages
These are the following programs I use on a semi-daily basis:
- [Golang](https://go.dev)
- [Node](https://nodejs.org/en/) (I use v16)
- [Python](https://www.python.org)
- [Docker](https://www.docker.com)
- [Nvm](https://github.com/nvm-sh/nvm)
- [Rust](https://www.rust-lang.org)

I don't have to install these programming languages but I do still use them frequently:
- [Javascript](https://developer.mozilla.org/en-US/docs/Web/JavaScript) | [HTML](https://developer.mozilla.org/en-US/docs/Web/HTML) | [CSS](https://developer.mozilla.org/en-US/docs/Web/CSS)
- [React](https://reactjs.org)

To quickly add these to your set-up, run the `programmingSetup` script. 

```
bash programmingSetup.sh
```

After `programmingSetup` completes, be sure to update your `~/.zshrc` file with the following:

```
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
```

At this point you can also finish your git login by running:
```
gh auth login
```
I always select Github.com, HTTPS, and then Log in through browser. It's much easier.

## OS Settings
### Finder
- Finder -> Preferences
    - General -> Show these on desktop -> Select **None**
        - I prefer a clean desktop when possible.
    - General -> New Finder windows show -> Home Folder
        - I need my home folder every day so it's easier for me if I visually start there.
    - Sidebar -> Show these items in sidebar -> Check Home Folder
    - Advanced -> When performing a search -> Search the Current Folder

### Dock
To be updated.

## Productivity
### Window Management
I have multiple windows open constantly. To help with this, I use [rectangle](https://rectangleapp.com) to move and resize windows using keyboard shortcuts.

### App Switching
The built-in app switcher is annoying to me and often times I need to be able to quickly see what I have open. I use [AltTab](https://alt-tab-macos.netlify.app) for this and have modified the original Cmd + Tab keys to use Alttab instead.

```
brew install alt-tab
```

### Timers
In college I used the Pomodoro technique consistently and the [BeFocused](https://apps.apple.com/us/app/be-focused-focus-timer/id973134470?mt=12) app enables me to do that directly on my laptop. It sits in my menu bar for easy access.

### Other Apps I use Daily
- [Chrome](https://www.google.com/chrome/) - used for development and cryoto wallets
- [Discord](https://discord.com) - messaging/community
- Keybase (not in apps.txt)
- [Slack](https://slack.com) - messaging for teams
- [Notion](https://www.notion.so) - personal database/work
- [Figma](https://www.figma.com) - UI design tool
- [Signal](https://signal.org/en/) - communication
- [Zoom](https://zoom.us) - meetings

## Desktop
### Wallpaper
I get my wallpapers from [Unsplash](https://unsplash.com). This is my current wallpaper:
![new-york](./wallpapers/partha-narasimhan-R1xgso_3UDQ-unsplash.jpg)