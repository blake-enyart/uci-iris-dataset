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
    response = Faraday.get('https://archive.ics.uci.edu/ml/machine-learning-databases/iris/bezdekIris.data')
    response_lines = response.body.split("\n").map { |s| s.split(",")}
    Iris.destroy_all
    response_lines.each do |iris|
      sepal_length = iris[0].to_f
      sepal_width = iris[1].to_f
      petal_length = iris[2].to_f
      petal_width = iris[3].to_f
      class_type = iris[4]
      Iris.create(sepal_length: sepal_length,
                  sepal_width: sepal_width,
                  petal_length: petal_length,
                  petal_width: petal_width,
                  class_type: class_type)
    end
  end
end
