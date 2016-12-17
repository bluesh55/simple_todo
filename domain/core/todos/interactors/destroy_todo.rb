module Core
  class DestroyTodo
    def self.destroy(todo_id)
      Repository.for(:todo).destroy(todo_id)
    end
  end
end
