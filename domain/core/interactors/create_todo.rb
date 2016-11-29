module Core
  class CreateTodo
    def self.create(content)
      Repository.for(:todo).create(content)
    end
  end
end
