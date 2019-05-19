class Clients::UciDataService
  include Requests::UciData

  def initialize
  end

  def all_irises
    @_response ||= get_data('iris/bezdekIris.data')
    preprocess_iris_data(@_response)
  end

  private

    def preprocess_iris_data(response)
      response.body.split("\n").map { |s| s.split(",")}
    end
end
