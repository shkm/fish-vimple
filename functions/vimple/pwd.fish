function vimple::pwd
  echo (dirs -0 | tr -d [:space:])
end

