function vimple::git_branch
  echo (command git rev-parse --abbrev-ref HEAD ^/dev/null)
end

function vimple::git_is_dirty
  echo (command git status -s --ignore-submodules=dirty ^/dev/null)
end

function fish_right_prompt
  if [ (vimple::git_branch) ]
    if [ (vimple::git_is_dirty) ]
      echo -n -s (set_color red) '⁕' (set_color normal)
    end

    echo -n -s ' ' (set_color white) (vimple::git_branch)
  end

  set_color normal
end

