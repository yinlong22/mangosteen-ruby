class Api::V1::ItemsController < ApplicationController
  def show
    items = Item.page(params[:page]).per(100)
    render json: { resources: items }
  end

  def create
    item = Item.new amount: 1
    if item.save
      render json: { resource: item }
    else
      render json: { errors: item }
    end
  end
end
