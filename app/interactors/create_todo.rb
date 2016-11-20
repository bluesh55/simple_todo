class CreateTodo
  def self.create(content)
    Repository.for(Todo).create(content)
  end
end
