class HomeController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
  end

  def purchases
  end

  def history
  end

  def favorites
  end

  def reputation
  	
  end

  def sales
  	
  end

  def products
    @products = Product.all
  end

  def search
    @products = Product.where("p_name like :query", query: "%#{params[:search]}%")
  end

end
