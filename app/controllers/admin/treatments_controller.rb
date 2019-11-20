class Admin::TreatmentsController < Admin::ApplicationController
  def index
    @treatments = Treatment.all
  end

  def show
    @treatment = Treatment.find(params[:id])
  end

  def new
    @treatment = Treatment.new
  end

  def edit
    @treatment = Treatment.find(params[:id])
  end

  def create
    @treatment = Treatment.new(treatment_params)
    @treatment.save
    redirect_to admin_treatments_path
  end

  def update
  @treatment = Treatment.find(params[:id])
  @treatment.update(treatment_params)
  redirect_to admin_treatments_path
  end

  def destroy
    @treatment = Treatment.find(params[:id])
    @treatment.destroy
    redirect_to admin_treatments_path
  end

  private

  def treatment_params
    params.require(:treatment).permit(:title,:subtitle,:content,:picture)
  end


end
