Dir[File.dirname(__FILE__) + '/repositories/**/*.rb'].each {|file| require file }

class Repository
  class Config
    def set_repository(entity, repository)
      Repository.repos[entity] = repository
    end
  end

  class << self
    def configure
      @config ||= Config.new
      yield(@config) if block_given?
    end

    def for(entity)
      repos[entity]
    end

    def repos
      @repos ||= {}
    end
  end
end
