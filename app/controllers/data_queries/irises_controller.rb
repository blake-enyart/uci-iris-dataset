class DataQueries::IrisesController < ApplicationController
  def index
    UciFacade.iris_data
    render_
  end
end
