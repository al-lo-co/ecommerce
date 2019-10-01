class HomeController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :set_products, only: [:products, :index]

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
  end

  def search
    @products = Product.where("p_name like :query", query: "%#{params[:search]}%")
  end

  private
  def set_products
    @products = Product.paginate(page: params[:page], per_page: 10)
  end

end
