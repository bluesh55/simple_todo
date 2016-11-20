module InMemoryRepository
  class BaseGateway
    def initialize
      @records = []
    end

    def find_all
      @records
    end
  end
end
