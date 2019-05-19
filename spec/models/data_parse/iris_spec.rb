require 'rails_helper'

describe DataParse::Iris do
  it 'returns attr correctly' do
    iris_data_raw = ["5.7", "4.4", "1.5", "0.4", "Iris-setosa"]

    iris = DataParse::Iris.new(iris_data_raw)
    expect(iris.sepal_length).to eq(5.7)
    expect(iris.sepal_width).to eq(4.4)
    expect(iris.petal_length).to eq(1.5)
    expect(iris.petal_width).to eq(0.4)
    expect(iris.class_type).to eq("Iris-setosa")
  end
end
