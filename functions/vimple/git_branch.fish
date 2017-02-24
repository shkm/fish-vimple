function vimple::git_branch
  echo (command git rev-parse --abbrev-ref HEAD ^/dev/null)
end

