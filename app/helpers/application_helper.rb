module ApplicationHelper

    def admin_menu
        if current_user
            if current_user.has_role? :admin            
                content_tag(:div, class: "ui secondary menu") do
                    concat content_tag(:div, 'Admin tools', :class=>'ui right pointing  label' )
                concat link_to "Access Users ", users_path, class: 'item'
                    concat link_to "Access Jobs", jobs_path, class: 'item'
                end
            end
        end  
    end
end
