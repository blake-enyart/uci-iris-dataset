require 'rails_helper'

describe Clients::UciDataService do
  it 'all_irises returns data in appropriate format' do
    file = File.open('spec/fixtures/data/bezdekIris.data')
    stub_request(:get, 'https://archive.ics.uci.edu/ml/machine-learning-databases/iris/bezdekIris.data')
      .to_return(status: 200, body: file, headers: {})

    uci_service = Clients::UciDataService.new
    all_data = uci_service.all_irises

    expect(all_data[0][0]).to eq('5.1')
    expect(all_data[0][1]).to eq('3.5')
    expect(all_data[0][2]).to eq('1.4')
    expect(all_data[0][3]).to eq('0.2')
    expect(all_data[0][4]).to eq('Iris-setosa')
  end
end
