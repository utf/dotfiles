function git_dirty
    if test "git status -s &> /dev/null" = ""
         echo ""
     end

     if test "git status --porcelain" = ""
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
