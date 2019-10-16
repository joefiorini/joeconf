function cmd_status
  set -l code $status
  set_color A5FF90
  set -l smiley "⊕"

  if test $code -ne 0
    set_color EC3A37
    set smiley "⊗"
  end

  echo $smiley
end

function jobs_count
  set -l jobs (count (jobs))

  if test $jobs -gt 0
    echo $jobs
  end
end

function fish_prompt
  echo (cmd_status) (jobs_count) (set_color normal)
end

set fish_color_command FF9D00
set fish_color_quote B362FF
set fish_color_redirection 9EFFFF
set fish_color_end FFEE80
set fish_color_error FF000D
set fish_color_param FF628C
set fish_color_comment B362FF
set fish_color_match 4D21FC
set fish_color_search_match 4D21FC
set fish_color_operator FAD000
set fish_color_escape B362FF
set fish_color_autosuggestion A599E9
set fish_color_cancel FF000D
