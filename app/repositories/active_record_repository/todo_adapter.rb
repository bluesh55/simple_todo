module ActiveRecordRepository
  class TodoAdapter < BaseAdapter
    def initialize
      super(Todo)
    end

    def create(content)
      @ar_class.create(content: content)
    end

    def destroy(todo_id)
      record = @ar_class.find_by(id: todo_id)
      record.destroy unless record.nil?
    end
  end
end
