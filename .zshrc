# .zshrc configuration for GitHub Codespaces

# Set PATH
export PATH="$PATH:/workspaces/semmle-code/target/intree/codeql-cpp"

# Aliases
alias ll='ls -la'
alias gs='git status'
alias gc='git commit'
alias gp='git push'
alias ga='git add'

# Enable history auto-completion
autoload -Uz compinit && compinit

# Plugins
# Install zsh-autosuggestions
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Install zsh-syntax-highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Prompt customization
PROMPT='%F{cyan}%n@%m %F{yellow}%~ %F{green}$(git_prompt_info)%f$ '

# Git prompt
autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats '(%b)'
zstyle ':vcs_info:*' enable git

# Other settings
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt SHARE_HISTORY

# History file
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
