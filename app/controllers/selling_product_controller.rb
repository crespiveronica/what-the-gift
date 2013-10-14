class SellingProduct < ApplicationController
  def approve
    @sp = SellingProduct(params[:id])
    @sp.approved = true
    @sp.pending = false
    @sp.save
  end

  def reject
    @sp = SellingProduct(params[:id])
    @sp.pending = false
    @sp.approved = false
    @sp.save
  end

end