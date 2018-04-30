json.extract! job, :id, :user, :size, :urgency, :pick_up, :drop_off, :charge, :description, :created_at, :updated_at
json.url job_url(job, format: :json)
