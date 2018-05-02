module UsersHelper

    def visiter_check(user) # helper method run in view to check who the vister is
        if user == current_user
            owner(user)
        else
            guest(user)
        end
    end
    
    def guest(user)# views for a guest
        # find move were job.user == the current user and :user = user
        moves = Move.where(user_id: user.id)
        moves.each do |move|
            if move.job.user = current_user
                return link_to 'Confirm Job', confirmmove_jobs_path(move.id), method: :post
            end
            return content_tag(:p, "no want to move your stuff")
        end
    end

    def owner(user)#views for profile owner
        link_to 'Edit', edit_user_path(user)
    end
    

end
