class CouponsController < ApplicationController

	def new
	end

	def create
		@c = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
		redirect_to coupon_path(@c)
	end

	def index
		@coupons = Coupon.all
	end

	def show
		@c = Coupon.find(params[:id])
	end

end