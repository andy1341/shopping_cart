module ShoppingCart
  class CouponsController < ApplicationController
    def apply
      @coupon = Coupon.find_by_name(coupon_params[:name])
      current_order.apply_coupon(@coupon)
      flash[:alert] = t('shopping_cart.coupons.apply.invalid_coupon') if @coupon.nil?
      redirect_to cart_path
    end

    private

    def coupon_params
      params.require(:coupon).permit(:name)
    end
  end
end