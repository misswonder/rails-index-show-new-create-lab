require 'pry'

class CouponsController < ActionController::Base

    def create
        #binding.pry
        @coupon = Coupon.new
        #binding.pry
        @coupon[:coupon_code] = params[:coupon][:coupon_code]
        #binding.pry
        @coupon[:store] = params[:coupon][:store]
        @coupon.save   
        redirect_to coupon_path(@coupon.id) 
    end 

    def show
        @coupon = Coupon.find(params[:id])
    end 

    def index
        @coupons = Coupon.all 
    end 

    def new
        @coupon = Coupon.new()
    end 
    
end
  