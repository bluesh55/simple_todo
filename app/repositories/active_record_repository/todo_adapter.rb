module ActiveRecordRepository
  class TodoAdapter < BaseAdapter
    def initialize
      super(Todo, Core::Entity::Todo)
    end

    def find_all
      return convert_records @ar_class.all
    end

    def create(content)
      record = @ar_class.create(content: content)
      return convert_record(record)
    end

    def destroy(todo_id)
      record = @ar_class.find_by(id: todo_id)
      if record.nil?
        return false
      else
        record.destroy
        return true
      end
    end

    private

    def convert_records(records)
      result = []

      records.each do |record|
        result << @entity_class.new(record.id, record.content)
      end

      result
    end

    def convert_record(record)
      @entity_class.new(record.id, record.content)
    end
  end
end
