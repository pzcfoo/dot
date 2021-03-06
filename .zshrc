# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/foo/.oh-my-zsh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="custom"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval "$(<~/.ssh-agent-thing)"
fi


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# ranger
export EDITOR="nvim"

# aliases

# Postgres
export PGHOST="localhost"
export PGUSER="webapp"
export PGPASSWORD="webapp"
export PGDATABASE="postgres"

# Gurobi
export GUROBI_HOME="/opt/gurobi811/linux64"
export PATH="${PATH}:${GUROBI_HOME}/bin"
export GUROBI_LIB="gurobi81"
export GRB_LICENSE_FILE="/opt/gurobi811/gurobi.lic"

# Cplex
export CPLEX_HOME="/opt/cplex128"

# coin-Osi
export COIN_OSI_HOME="/opt/coin-Osi"

# NFO engine
export nfo="/home/paul/_work/repos/engines/network_flow_engine/BasicNFO/Build/BasicNFO.exe"

function _cwd()
{
    pwd | xclip -i
}

function _trp_venv()
{
    source /home/paul/_work/virtualenvs/tropofy-testing-venv/bin/activate
}

function _data_venv()
{
    source /home/paul/_work/virtualenvs/data-venv/bin/activate
}

function _gen_venv()
{
    source /home/foo/work/virtualenvs/gen-venv/bin/activate
}

function _grb_652()
{
    export GUROBI_HOME="/opt/gurobi652/linux64"
    export PATH="${PATH}:${GUROBI_HOME}/bin"
    export GUROBI_LIB="gurobi65"
    export GUROBI_INCLUDE_DIR="/opt/gurobi652/linux64/include"
}

function _grb_651()
{
    export GUROBI_HOME="/opt/gurobi651/linux64"
    export PATH="${PATH}:${GUROBI_HOME}/bin"
    export GUROBI_LIB="gurobi65"
    export GUROBI_INCLUDE_DIR="/opt/gurobi651/linux64/include"
}
