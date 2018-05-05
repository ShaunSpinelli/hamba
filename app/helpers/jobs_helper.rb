module JobsHelper

    def job_options(job)
        if job.user == current_user
            job_applications(job)
        else
            apply_job(job)
        end
    end
    

    def apply_job(job)
        if Move.where(user_id: current_user.id , job_id: job.id).exists?
            return content_tag(:p, "You have applied for this job")
        else
            return link_to 'Apply For Job', makemove_jobs_path(@job), method: :post
        end
    end
    
    def job_applications(job)
        if Move.find_by(job_id: job.id) != nil
            content_tag(:div, class: "") do
                concat content_tag(:p,"Users interested")
                Move.where(job_id: job.id).each do |move|
                    concat content_tag(:p, "#{move.user.full_name}")                    
                    concat link_to 'Confirm Job', confirmmove_jobs_path({:id => move.id, :confirm => 'true'}), method: :post
                    concat link_to 'Decline job', confirmmove_jobs_path({:id => move.id, :confirm => 'false'}), method: :post                  
                    concat content_tag(:p, "")
                end
            end
        else
            return content_tag(:p, "no wants too move your stuff")
        end
    end

end

