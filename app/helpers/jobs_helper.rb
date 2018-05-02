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
            return link_to 'Accept Job', makemove_jobs_path(@job), method: :post
        end
    end
    
    def job_applications(job)
        if Move.find_by(job_id: job.id) != nil
            content_tag(:div, class: "") do
                Move.where(job_id: job.id).each do |move|
                    concat link_to move.user.email, user_path(move.user)
                end
            end
        else
            return content_tag(:p, "no want to move your stuff")
        end
    end

end

