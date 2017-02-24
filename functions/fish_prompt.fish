function fish_prompt
  echo -n -s (set_color blue) (vimple::pwd)
  set -l prefix
  set prefix ' <$> '

  echo -n -s (vimple::vi_mode_color) $prefix

  set_color normal
end
