function fish_right_prompt
  set __fish_git_prompt_show_informative_status yes
  set __fish_git_prompt_showdirtystate yes
  set __fish_git_prompt_showstashstate yes
  set __fish_git_prompt_color_branch green

  set __fish_git_prompt_char_stagedstate '[38;5;037m+'
  set __fish_git_prompt_char_dirtystate '[38;5;160m!'

  set __fish_git_prompt_char_upstream_ahead '↑'
  set __fish_git_prompt_char_upstream_behind '↓'

  if git_is_repo
    set_color green
    printf '%s' (__fish_git_prompt)
    set_color normal
  end
end
