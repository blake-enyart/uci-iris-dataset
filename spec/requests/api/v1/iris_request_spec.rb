require 'rails_helper'

describe 'Irises API', type: :request do
  it 'sends a list of irises' do

    get '/api/v1/irises'

    expect(response).to be_successful

    parsed = JSON.parse(response.body, symbolize_names: true)[:data]

    expect(parsed.first.keys.include?(:sepal_length)).to eq(true)
    expect(parsed.first.keys.include?(:sepal_width)).to eq(true)
    expect(parsed.first.keys.include?(:petal_length)).to eq(true)
    expect(parsed.first.keys.include?(:petal_width)).to eq(true)
    expect(parsed.first.keys.include?(:class)).to eq(true)
  end
end
