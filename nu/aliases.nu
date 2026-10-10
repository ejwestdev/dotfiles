# aliases.nu
#
# Ported from ~/.dotfiles/fish/config.fish.
# Sourced from config.nu via ~/.aliases.nu (symlink into this repo),
# same convention as ~/.zoxide.nu.

# --- plain aliases ---
alias rm = rm -i
alias flushdns = sudo systemd-resolve --flush-caches
alias vim = nvim
alias ldot = eza -d .*
alias transcribe = ./build/bin/whisper-stream -m ./models/ggml-large-v3.bin -t 8 --step 500 --length 5000 -l ar -tr
alias cr = cargo run
alias ccp = cargo clippy -- -W clippy::pedantic
alias v = vim
alias e = exit
alias rg = rg -S
alias jd = jj describe -m
alias jb = jj bookmark set

# nu's mkdir already creates parent directories, so no -p alias is needed

# --- fish aliases with pipelines (`&&` / `|`) become custom commands ---

# ccr='clear && cargo run'
def --wrapped ccr [...rest] {
    clear
    cargo run ...$rest
}

# rgf='rg --files | rg'
def --wrapped rgf [...rest] {
    rg --files | rg ...$rest
}
