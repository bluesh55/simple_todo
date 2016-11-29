module ActiveRecordRepository
  class TodoAdapter < BaseAdapter
    def initialize
      super(Todo)
    end

    def create(content)
      @ar_class.create(content: content)
    end
  end
end
