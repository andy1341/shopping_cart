module ShoppingCart
  class CartsController < ApplicationController
    def show
      @order = current_order
    end
  end
end
