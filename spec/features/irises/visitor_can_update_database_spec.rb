require 'rails_helper'

describe 'Irises Index' do
  it 'request file and saves in database', type: :feature do
    file = File.open('spec/fixtures/data/bezdekIris.data')
    stub_request(:get, 'https://archive.ics.uci.edu/ml/machine-learning-databases/iris/bezdekIris.data')
      .to_return(status: 200, body: file, headers: {})

    visit '/'
    click_link 'UCI Iris Dataset'

    expect(current_path).to eq(irises_path)
    expect(Iris.all.count).to eq(0)

    click_link 'Update Data'

    expect(Iris.all.count).to eq(150)
  end
end
