if Rails.env.test?
  Repository.configure do |config|
    config.repository_type = :in_memory
  end
else
  Repository.configure do |config|
    config.repository_type = :active_record
  end
end
