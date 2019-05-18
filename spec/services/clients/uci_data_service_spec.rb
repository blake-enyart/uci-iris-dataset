require 'rails_helper'

describe 'Irises External API', type: :request do
  it 'request file and saves in database' do
    file = File.open('spec/fixtures/data/bezdekIris.data')
    stub_request(:get, 'https://archive.ics.uci.edu/ml/machine-learning-databases/iris/bezdekIris.data')
      .to_return(status: 200, body: file, headers: {})

    visit '/'
    click_link 'UCI Iris Dataset'

    expect(current_path).to eq(irises_path)
    expect(page).to have_content('UCI Iris Dataset')
    within('.dataset-graphs') do
      expect(page.have_css('a#graph-1')['src']).to have_content 'assets/images/uci_dataset_graph_1.png'
    end
  end
end
