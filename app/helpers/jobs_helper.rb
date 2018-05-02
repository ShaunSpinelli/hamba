module JobsHelper

    def apply_job(job)
        if Move.where(user_id: current_user.id , job_id: job.id).exists?
            content_tag(:p, "You have applied for this job")
        else
            link_to 'Accept Job', makemove_jobs_path(@job), method: :postcode
        end
    end
    
end
