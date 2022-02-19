
export ZSH="/Users/diogofalken/.oh-my-zsh"
ZSH_THEME="spaceship"

plugins=(
	git
	macos
	npm
	web-search
	sudo
)

source $ZSH/oh-my-zsh.sh

alias w="cd ~/Documents/Workspace"
alias main_wallet="deno run --allow-net ~/Documents/Workspace/wallet-nft-calculator/lib/main.ts --wallet toDefine"
alias hosky="deno run --allow-net ~/Documents/Workspace/hosky-helper/lib/main.ts"

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SUFFIX=" "

### Added by Zplugin's installer
source '/Users/diogofalken/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk
zplugin light zdharma/fast-syntax-highlighting
zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-completions


export NVM_DIR="/Users/diogofalken/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"

PATH="/Users/diogofalken/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/diogofalken/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/diogofalken/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/diogofalken/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/diogofalken/perl5"; export PERL_MM_OPT;

export PATH=$PATH:/Users/diogofalken/Documents/feup/teste/defects4j/framework/bin
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
