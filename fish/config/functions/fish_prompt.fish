function cmd_status
  set -l code $status
  set_color green
  set -l smiley "⊕"

  if test $code -ne 0
    set_color red
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
