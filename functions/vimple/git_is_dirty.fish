function vimple::git_is_dirty
  echo (command git status -s --ignore-submodules=dirty ^/dev/null)
end

