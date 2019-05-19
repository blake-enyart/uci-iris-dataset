require 'rails_helper'

describe 'Irises Index' do
  it 'request file and saves in database', type: :feature do
    pending
    visit '/'
    click_link 'UCI Iris Dataset'

    expect(current_path).to eq(irises_path)
    expect(page).to have_content('UCI Iris Dataset')
    within('.dataset-graphs') do
      expect(page).to have_css('a#graph-1', text: 'Graph 1 Irises')
      expect(page.find('a#graph-1')['src']).to have_content('assets/images/uci_dataset_graph_1.png')
    end
  end
end
