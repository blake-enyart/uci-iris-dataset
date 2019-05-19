class UciFacade

  def initialize
  end

  def self.iris_data
    Clients::UciDataService.new('all')
  end
end
