module ApplicationHelper

    def admin_menu
        if current_user
            if current_user.has_role? :admin            
                content_tag(:div, class: "") do
                    concat content_tag(:p, "Admin tools:")
                    concat link_to "Access Users ", users_path 
                    concat link_to "Access Jobs", jobs_path
                end
            end
        end  
    end
end
