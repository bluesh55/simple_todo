module Core
  class Repository

    class Config
      def set_repository(entity, repository)
        Repository.repos[entity] = repository
      end
    end

    class << self
      DefaultRepos = {
        todo: InMemoryRepository::TodoAdapter.new
      }

      def configure
        @config ||= Config.new
        yield(@config) if block_given?
      end

      def for(entity)
        repos[entity]
      end

      def repos
        @repos ||= DefaultRepos
      end
    end
  end
end
