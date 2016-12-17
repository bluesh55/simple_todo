module InMemory
  class TodoRepository
    def initialize
      @records = {}
      @id_counter = 1
    end

    def find_all
      @records.values
    end

    def create(content)
      @records[@id_counter] = Core::Entity::Todo.new(@id_counter, content)
      @id_counter += 1
    end

    def destroy(todo_id)
      @records.delete todo_id
    end
  end
end
