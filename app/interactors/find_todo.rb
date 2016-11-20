class FindTodo
  def self.find_all
    Repository.for(Todo).find_all
  end
end
