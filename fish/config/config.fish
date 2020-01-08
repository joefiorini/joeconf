set -x EDITOR nvim

set -x NODE_OPTIONS --max-old-space-size=8192

set -x REVIEW_BASE develop

if test -d $HOME/bin
  set -a PATH $HOME/bin
end

if test -d $HOME/.local/bin
  set -a PATH $HOME/.local/bin
end

if test -d /opt/bin
  set -a PATH /opt/bin
end

if test -d /usr/local/opt/qt/bin
  set -U fish_user_paths "/usr/local/opt/qt/bin" $fish_user_paths
  set -U fish_user_paths "/usr/local/opt/qt/bin" $fish_user_paths
end

if test -d $HOME/.opam
# opam configuration
  source $HOME/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
end

if test -d /usr/local/opt/llvm
  set -U fish_user_paths "/usr/local/opt/llvm/bin" $fish_user_paths
end

if test -d $HOME/.cargo
  set -a PATH $HOME/.cargo/bin
end

set -x YVM_DIR /home/joe/.yvm
. $YVM_DIR/yvm.fish
