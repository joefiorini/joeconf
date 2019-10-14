set -x SPACEFISH_DIR_COLOR yellow
set -x SPACEFISH_USER_COLOR black
set -x SPACEFISH_GIT_BRANCH_COLOR green
set -x SPACEFISH_GIT_STATUS_COLOR black
set -x SPACEFISH_PACKAGE_COLOR cyan

set -x EDITOR nvim

set -x NODE_OPTIONS --max-old-space-size=8192

set -x REVIEW_BASE develop

set -x PATH $PATH:/opt/bin
set -g fish_user_paths "/usr/local/opt/qt/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/qt/bin" $fish_user_paths

# opam configuration
source /Users/jfiorini/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
set -g fish_user_paths "/usr/local/opt/llvm/bin" $fish_user_paths
set -x PATH $PATH:/Users/jfiorini/.cargo/bin
