module InMemoryRepository
  class TodoGateway < BaseGateway
    def create(content)
      @records << Todo.new(content)
    end
  end
end
