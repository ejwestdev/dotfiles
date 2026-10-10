# env.nu
#
# Installed by:
# version = "0.116.1"
#
# Previously, environment variables were typically configured in `env.nu`.
# In general, most configuration can and should be performed in `config.nu`
# or one of the autoload directories.
#
# This file is generated for backwards compatibility for now.
# It is loaded before config.nu and login.nu
#
# See https://www.nushell.sh/book/configuration.html
#
# Also see `help config env` for more options.
#
# You can remove these comments if you want or leave
# them for future reference.

# --- environment variables (ported from fish config.fish) ---
$env.VISUAL = "vim"
$env.EDITOR = $env.VISUAL
$env.JAVA_HOME = "/usr/lib/jvm/java-17-temurin-jdk"
$env.IDEAJ = ($env.HOME | path join "Documents/idea-IC-243.26053.27/bin")
$env.EMULATOR_HOME = ($env.HOME | path join "Android/Sdk/emulator")
$env.ADB_HOME = ($env.HOME | path join "Android/Sdk/platform-tools")
$env.ANDROID_AVD_HOME = ($env.HOME | path join ".var/app/com.google.AndroidStudio/config/.android/avd")
$env.NVM_DIR = ($env.HOME | path join ".nvm")

# --- PATH (ported from fish_add_path in config.fish) ---
# brew + user bin dirs, so tools work even when ghostty launches nu
# straight from the desktop (where .bashrc never ran).
# Listed front-to-back, matching the order fish's repeated
# `fish_add_path --prepend` produced. (/usr/local/bin stays untouched:
# it is already on the default PATH, so fish's add was a no-op.)
$env.PATH = ($env.PATH | prepend [
    /home/linuxbrew/.linuxbrew/bin
    /home/linuxbrew/.linuxbrew/sbin
    ($env.HOME | path join .kimi-code/bin)
    ($env.HOME | path join evcxr-v0.21.1-x86_64-unknown-linux-gnu)
    ($env.HOME | path join .cargo/bin)
    ($env.HOME | path join .opencode/bin)
    ($env.HOME | path join bin)
    ($env.HOME | path join .local/bin)
    $env.ADB_HOME
    $env.ANDROID_AVD_HOME
    $env.EMULATOR_HOME
    ($env.JAVA_HOME | path join bin)
    $env.IDEAJ
] | uniq)
