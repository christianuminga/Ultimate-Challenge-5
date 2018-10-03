class ProductsController < ApplicationController
  def index
    @products          = Product.all

    @product_count     = Product.count()
    @average_price     = Product.average(:price)
    @quantity_of_stock = Product.sum(:stock_quantity)
  end

end
