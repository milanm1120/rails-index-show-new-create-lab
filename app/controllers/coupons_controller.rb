class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all   #view all available coupons
    end

    def show
        @coupon = Coupon.find(params[:id])     #show specific coupon by :id value
    end

    def new
    end

    def create
        @coupon = Coupon.new                               #create and save valid coupon entered via form
        @coupon.coupon_code = params[:coupon][:coupon_code]
        @coupon.store = params[:coupon][:store]
        @coupon.save
        redirect_to coupon_path(@coupon)
    end

end