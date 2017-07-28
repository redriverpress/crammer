class Crammer::PlacementsController < ApplicationController
  def new
    @crammer_placement = Crammer::Placement.new
  end

  def create
    @crammer_placement = current_user.crammer_placements.new crammer_placement_params

    if @crammer_placement.save
      redirect_to crammer_classes_path
    else
      render 'new'
    end
  end

  private

  def crammer_placement_params
    params.require(:crammer_placement).permit(:user_id, :crammer_class_id)
  end
end
