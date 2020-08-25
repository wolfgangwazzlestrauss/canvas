# Fish settings file.


# Aliases.
source "$HOME/.aliases"


# User settings.
# Add scripts directory to PATH environment variable.
set -x PATH "$HOME/.local/bin:$PATH"


# Fish settings.

# Disable welcome message.
set fish_greeting


# Go settings.
set -x PATH "/usr/local/go/bin:$PATH"


# Node settings.
set -x PATH "$HOME/.npm-global/bin:$PATH"

# Deno settings.
set -x DENO_INSTALL "/usr/local/deno"
set -x PATH "$DENO_INSTALL/bin:$PATH"


# Python settings.
# Make Poetry create virutal environments inside projects.
set -x POETRY_VIRTUALENVS_IN_PROJECT 1

# Initialize pyenv if installed.
#
# Flags:
#     -q: Only check for exit status by supressing output.
if type -q pyenv
    pyenv init - | source
    pyenv virtualenv-init - | source
end


# Rust settings.
set -x PATH "usr/local/cargo/bin:$PATH"


# Tool settings.
set -x BAT_THEME "Solarized (light)"
zoxide init fish | source


# Wasmtime settings.
set -x PATH "$WASMTIME_HOME/bin:$PATH"


# Starship settings.
starship init fish | source