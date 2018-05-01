module FormHelper
    def setup_job(job)
      job.pick_up ||= PickUp.new
      job.drop_off ||= DropOff.new      
      job
    end
end