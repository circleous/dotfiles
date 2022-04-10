export LANG=en_US.UTF-8

# SDKMAN
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Android SDK
if [[ $(uname -s) = "Darwin" ]]; then
  export ANDROID_HOME=$HOME/Library/Android/sdk
else
  export ANDROID_HOME=$HOME/Android/sdk
fi
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Golang
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# PATH
export PATH=$HOME/.local/bin:$PATH

# Rust
. "$HOME/.cargo/env"
