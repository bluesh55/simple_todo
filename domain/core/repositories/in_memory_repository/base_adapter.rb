module Core
  module InMemoryRepository
    class BaseAdapter
      def initialize
        @records = []
        @id_counter = 1
      end

      def find_all
        @records
      end
    end
  end
end
