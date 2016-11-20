module ActiveRecordRepository
  class TodoGateway < BaseGateway
    def initialize
      super(ActiveRecordRepo::Todo)
    end

    def create(content)
      @ar_class.create(content: content)
    end
  end
end
