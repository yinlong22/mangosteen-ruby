class Api::V1::ItemsController < ApplicationController
  def show
    items = Item.page(params[:page])
    render json: {
      resources: items,
      pager: {
        page: params[:page] || 1,
        per_page: 10,
        count: Item.count
      }
    }
  end

  def create
    item = Item.new amount: params[:amount]
    if item.save
      render json: { resource: item }
    else
      render json: { errors: item }
    end
  end
end
