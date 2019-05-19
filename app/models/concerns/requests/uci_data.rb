module Requests::UciData
  def conn
    Faraday.new('https://archive.ics.uci.edu/ml/machine-learning-databases/')
  end

  def get_data(url)
    response = conn.get(url)
  end
end
