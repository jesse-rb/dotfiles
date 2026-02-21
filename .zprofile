# Set PATH, MANPATH, etc., for Homebrew
if [[ $OSTYPE == "darwin"* ]] then
    # For macos
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi
if [[ $OSTYPE == "linux"* ]] then
    # For linux
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi
