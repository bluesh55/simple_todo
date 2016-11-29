unless Rails.env.test?
  Core::Repository.configure do |config|
    config.set_repository(:todo, ActiveRecordRepository::TodoAdapter.new)
  end
end
