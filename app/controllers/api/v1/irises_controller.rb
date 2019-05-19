class Api::V1::IrisesController < ApplicationController
  def index
    render json: IrisSerializer.new(Iris.all)
  end
end
