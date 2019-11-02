class Admin::TreatmentsController < Admin::ApplicationController
  def index
    @treatments = Tretment.all
  end

  def show
    @treatment = Tretment.find(params[:id])
  end
end
