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
            return link_to 'Apply For Job', makemove_jobs_path(@job), method: :post, class: 'ui positive button'
        end
    end
    
    def job_applications(job)
        if Move.find_by(job_id: job.id) != nil  
               @moves = Move.where(job_id: job.id)
               return @moves
        else
            return nil
        end
    end

    def tag_colour(job)
        job.urgency == "Very Urgent" ? col = "red" : col = "teal"
        return content_tag(:a,"#{job.urgency}", class:"ui #{col} ribbon label")
    end

    def distance(job)
        distance = Geocoder::Calculations.distance_between([job.pick_up.latitude,job.pick_up.longitude], [job.drop_off.latitude,job.drop_off.longitude])
        '%.1f' % distance * 1.6
    end

    def user_jobs()
        link_to "Your Job Postings", jobs_path(user_id: current_user.id),class: 'ui button' unless current_user.jobs.empty?
    end
    
    def pending(job)
        if job.moves.where(confirmed: true).exists?
            return content_tag(:a,"Pending", class:"ui orange right ribbon label")
        end
    end
    


end

