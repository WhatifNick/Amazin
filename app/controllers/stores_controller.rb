class StoresController < ApplicationController
  def index
    @stores = Store.all
  end

  def show
    @store = Store.find(params[:store_id])
  end

  def search
    @search = Store.near(params[:address])[0]
  end
end
