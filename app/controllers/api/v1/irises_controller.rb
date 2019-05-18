class Api::V1::IrisesController < ApplicationController
  def index
    render json: Iris.all
  end
end
