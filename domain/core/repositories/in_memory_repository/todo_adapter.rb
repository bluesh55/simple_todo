module Core
  module InMemoryRepository
    class TodoAdapter < BaseAdapter
      def create(content)
        @records[@id_counter] = Entity::Todo.new(@id_counter, content)
        @id_counter += 1
      end

      def destroy(todo_id)
        @records.delete todo_id
      end
    end
  end
end
