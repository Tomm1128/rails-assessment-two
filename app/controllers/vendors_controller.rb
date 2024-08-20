class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find(params[:id])
    @vendor_sweet = VendorSweet.new
    @sweets = Sweet.all
  end

end
