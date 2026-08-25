set -g fish_greeting
set -gx VISUAL vim
set -gx EDITOR $VISUAL
set -gx JAVA_HOME /usr/lib/jvm/java-17-temurin-jdk
set -gx IDEAJ $HOME/Documents/idea-IC-243.26053.27/bin
set -gx EMULATOR_HOME $HOME/Android/Sdk/emulator
set -gx ADB_HOME $HOME/Android/Sdk/platform-tools
set -gx ANDROID_AVD_HOME $HOME/.var/app/com.google.AndroidStudio/config/.android/avd
set -gx NVM_DIR $HOME/.nvm

fish_add_path --prepend \
    $IDEAJ \
    $JAVA_HOME/bin \
    $EMULATOR_HOME \
    $ANDROID_AVD_HOME \
    $ADB_HOME \
    $HOME/.local/bin \
    $HOME/bin

fish_add_path --prepend $HOME/.opencode/bin
fish_add_path --prepend $HOME/.local/bin
fish_add_path --prepend $HOME/.cargo/bin
fish_add_path --prepend $HOME/evcxr-v0.21.1-x86_64-unknown-linux-gnu

starship init fish | source

alias rm='rm -i'
alias flushdns='sudo systemd-resolve --flush-caches'
alias vim='nvim'
alias ldot='eza -d .*'
alias transcribe='./build/bin/whisper-stream -m ./models/ggml-large-v3.bin -t 8 --step 500 --length 5000 -l ar -tr'
alias ccr='clear && cargo run'
alias cr='cargo run'
alias ccp='cargo clippy -- -W clippy::pedantic'
alias v='vim'
alias e='exit'
#jj 
alias jgp='jj git push -b'
alias jb='jj bookmark set'
