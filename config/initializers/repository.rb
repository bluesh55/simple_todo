unless Rails.env.test?
  Repository.configure do |config|
    config.set_repository(:todo, ActiveRecord::TodoRepository.new)
  end
end
