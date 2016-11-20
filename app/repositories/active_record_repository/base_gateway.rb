module ActiveRecordRepository
  class BaseGateway
    def initialize(ar_class)
      @ar_class = ar_class
    end

    def find_all
      @ar_class.all
    end
  end
end
