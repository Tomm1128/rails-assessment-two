class VendorSweetsController < ApplicationController
  def create
    @vendor_sweet = VendorSweet.new(vendor_sweet_params)

    if @vendor_sweet.save
      redirect_to vendor_path(@vendor_sweet.vendor), notice: "Sweet was successfully added to the vendor."
    else
      @vendor = @vendor_sweet.vendor
      @sweets = Sweet.all
      render "vendors/show"
    end
  end

  private

  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:sweet_id, :comment, :vendor_id)
  end
end
