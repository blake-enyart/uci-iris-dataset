require 'rails_helper'

describe UciResultsFacade do
  it 'receives and processes irises data' do
    file = File.open('spec/fixtures/data/bezdekIris.data')
    stub_request(:get, 'https://archive.ics.uci.edu/ml/machine-learning-databases/iris/bezdekIris.data')
      .to_return(status: 200, body: file, headers: {})

    facade = UciResultsFacade.new
    results = facade.iris_data

    expect(results.first.sepal_length).to eq(5.1)
    expect(results.first.sepal_width).to eq(3.5)
    expect(results.first.petal_length).to eq(1.4)
    expect(results.first.petal_width).to eq(0.2)
    expect(results.first.class_type).to eq('Iris-setosa')
  end
end
