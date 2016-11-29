module ActiveRecordRepository
  class BaseAdapter
    def initialize(ar_class, entity_class)
      @ar_class = ar_class
      @entity_class = entity_class
    end
  end
end
