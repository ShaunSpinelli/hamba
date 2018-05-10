module UsersHelper

    def visiter_check(user) # helper method run in view to check who the vister is
        if user == current_user or current_user.has_role? :admin
            owner(user)
        else
            guest(user)
        end
    end
    
    def guest(user)
        moves = Move.where(user_id: user.id) 
        moves.each do |move|
            if move.job.user = current_user 
                return content_tag(:p, "You've worked with #{user.full_name} before")
            end
        end
        return content_tag(:p, "You've have not worked with #{user.full_name} before")        
    end

    def owner(user)
        link_to 'Edit', edit_user_path(user)
    end
    

end
