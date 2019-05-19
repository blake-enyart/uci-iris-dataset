module Requests::UciData
  def conn
    Faraday.new('https://archive.ics.uci.edu/ml/machine-learning-databases/')
  end

  def preprocess_data(response)
    response.body.split("\n").map { |s| s.split(",")}
  end

  def get_data(url)
    response = conn.get(url)
    preprocess_data(response)
  end
end
