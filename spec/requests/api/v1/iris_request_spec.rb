require 'rails_helper'

describe 'Irises Internal API' do
  it 'sends a JSON of all irises in db', type: :feature do
    iris_1, iris_2, iris_3 = create_list(:iris, 3)
    get '/api/v1/irises'

    expect(response).to be_successful

    parsed = JSON.parse(response.body, symbolize_names: true)[:data]
    
    expect(parsed.count).to eq(3)
    expect(parsed.first[:attributes][:sepal_length]).to eq(iris_1.sepal_length)
    expect(parsed.first[:attributes][:sepal_width]).to eq(iris_1.sepal_width)
    expect(parsed.first[:attributes][:petal_length]).to eq(iris_1.petal_length)
    expect(parsed.first[:attributes][:petal_width]).to eq(iris_1.petal_width)
    expect(parsed.first[:attributes][:class_type]).to eq(iris_1.class_type)
  end
end
