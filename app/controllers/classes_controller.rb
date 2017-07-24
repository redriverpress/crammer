class ClassesController < ApplicationController

  def new
    @crammer_classes = Crammer::Class.new
  end

  def create
    @crammer_classes = Crammer::Class.new params[:name]
    @crammer_classes.user_id = current_user.id
    if @crammer_classes.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    @crammer_classes = Crammer::Class.where('user_id = ?', current_user.id)
  end

  def destroy
    # @selected_classes = @all_classes.find(params[:id])
    @crammer_classes.destroy
  end

  # private
  #   def user_params
  #     params.permit(:name)
  #   end
end
