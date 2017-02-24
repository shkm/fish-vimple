function vimple::pwd
  echo (dirs -0 | tr -d [:space:])
end

function vimple::vi_mode_color
  switch $fish_bind_mode
  case default
    set_color red
  case insert
    set_color green
  case visual
    set_color magenta
  end
end

function fish_prompt
  echo -n -s (set_color blue) (vimple::pwd)
  set -l prefix
  set prefix ' <$> '

  echo -n -s (vimple::vi_mode_color) $prefix

  set_color normal
end
