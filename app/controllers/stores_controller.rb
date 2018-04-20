class StoresController < ApplicationController
  def index
    @stores = Store.all

    # if params[:address]
    #   @nearest_stores = Store.near(params[:address], 50, units: 'km')[0]
    # end


  end

  def show
    @store = Store.find(params[:store_id])
  end

  def search
    @search = Store.near(params[:address])[0]
  rescue
  flash[:notice] = 'Error'
  redirect_to(:action => 'index')
  end
end
