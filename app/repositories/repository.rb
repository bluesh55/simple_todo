module Repository
  def self.configuration
    @config ||= Configuration.new
  end

  def self.configure
    yield(self.configuration) if block_given?
  end

  def self.for(entity_class)
    self.gateways[entity_class.to_s]
  end

  def self.gateways
    {
      "Todo" => self.configuration.namespace::TodoGateway.new
    }
  end
end
