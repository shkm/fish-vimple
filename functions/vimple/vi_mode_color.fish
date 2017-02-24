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

