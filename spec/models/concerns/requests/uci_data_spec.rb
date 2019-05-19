require 'rails_helper'

describe Requests::UciData do
  describe 'all_irises' do
    it 'receives information in expected format', :vcr do
      uci_service = Clients::UciDataService.new
      response = uci_service.get_data('iris/bezdekIris.data')

      expect(response.body.include?('5.1,3.5,1.4,0.2,Iris-setosa')).to eq(true)
    end
  end
end
