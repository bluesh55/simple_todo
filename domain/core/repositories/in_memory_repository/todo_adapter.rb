module Core
  module InMemoryRepository
    class TodoAdapter < BaseAdapter
      def create(content)
        @records << Entity::Todo.new(@id_counter, content)
        @id_counter += 1
      end
    end
  end
end
