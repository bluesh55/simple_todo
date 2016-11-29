module Core
  module InMemoryRepository
    class BaseAdapter
      def initialize
        @records = []
      end

      def find_all
        @records
      end
    end
  end
end
