module Core
  class FindTodo
    def self.find_all
      Repository.for(:todo).find_all
    end
  end
end
