function git_dirty
    if string length -q -- (git status -s &> /dev/null)
         echo ""
    else if not string length -q -- (git status --porcelain 2> /dev/null)
       echo " ("(set_color green)(git_prompt_info)(set_color normal)")"
    else
       echo " ("(set_color yellow)(git_prompt_info)(set_color normal)")"
   end
end

function git_prompt_info
   set ref (git symbolic-ref HEAD 2>/dev/null) || return
   echo (string replace "refs/heads/" "" $ref)
end


function fish_prompt
    echo $cluster in (prompt_pwd)(git_dirty) '› '
end
