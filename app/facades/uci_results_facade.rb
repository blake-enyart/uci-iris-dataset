class UciResultsFacade

  def initialize
  end

  def iris_data
    uci_service = Clients::UciDataService.new
    raw_data = uci_service.all_irises
    raw_data.map do |iris_data_raw|
      DataParse::Iris.new(iris_data_raw)
    end
  end
end
