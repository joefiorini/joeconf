set -x EDITOR nvim

set -x NODE_OPTIONS --max-old-space-size=8192

set -x REVIEW_BASE develop

set -x MSBuildSDKsPath /usr/share/dotnet/sdk/(dotnet --version)/Sdks

function auto_nvm --on-variable PWD
  if test -f $PWD/.nvmrc
    nvm < .nvmrc
  else
    nvm unuse
  end
end

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

set extraterm_path (which extraterm)
if test -x $extraterm_path
  source $HOME/.config/fish/setup_extraterm_fish.fish
end

if test -d /usr/lib/node_modules/npm
  set -a PATH "$HOME/.node_modules/bin"
  set -x npm_config_prefix ~/.node_modules
end
