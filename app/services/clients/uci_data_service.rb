class Clients::UciDataService
  attr_reader :query

  def initialize(query)
    @query = query
    query_selector(query)
  end

  def query_selector(query)
    if query == 'all'
      all_irises
    end
  end

  def all_irises
    data_raw = Faraday.get('https://archive.ics.uci.edu/ml/machine-learning-databases/iris/bezdekIris.data')
  end
end
