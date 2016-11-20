class Configuration
  attr_accessor :repository_type

  def initialize
    @repository_type = :active_record
  end

  def namespace
    case @repository_type
    when :active_record
      ActiveRecordRepository
    when :in_memory
      InMemoryRepository
    end
  end
end
