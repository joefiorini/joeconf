set -x EDITOR nvim

set -x NODE_OPTIONS --max-old-space-size=8192

set -x REVIEW_BASE develop

if test -d /opt/bin
  set -x PATH $PATH:/opt/bin
end

if test -d /usr/local/opt/qt/bin
  set -g fish_user_paths "/usr/local/opt/qt/bin" $fish_user_paths
  set -g fish_user_paths "/usr/local/opt/qt/bin" $fish_user_paths
end

if test -d $HOME/.opam
# opam configuration
  source $HOME/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
end

if test -d /usr/local/opt/llvm
  set -g fish_user_paths "/usr/local/opt/llvm/bin" $fish_user_paths
end

if test -d $HOME/.cargo
  set -x PATH $PATH:$HOME/.cargo/bin
end
