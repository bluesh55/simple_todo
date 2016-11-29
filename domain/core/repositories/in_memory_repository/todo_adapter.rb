module Core
  module InMemoryRepository
    class TodoAdapter < BaseAdapter
      def create(content)
        @records << Entity::Todo.new(content)
      end
    end
  end
end
