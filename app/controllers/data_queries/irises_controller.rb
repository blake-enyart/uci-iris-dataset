class DataQueries::IrisesController < ApplicationController
  def create
    Iris.destroy_all
    UciResultsFacade.new.iris_data.each do |iris|
      Iris.create!(iris.as_json)
    end
    redirect_to irises_path
  end
end
