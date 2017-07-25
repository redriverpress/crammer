class Crammer::ClassesController < ApplicationController
  def new
    @crammer_class = Crammer::Class.new
  end

  def create
    @crammer_class = current_user.crammer_classes.new crammer_class_params
    if @crammer_class.save
      redirect_to crammer_classes_path
    else
      render 'new'
    end
  end

  def index
    @crammer_classes = current_user.crammer_classes
  end

  def destroy
    @crammer_class = current_user.crammer_classes.find params[:id]
    @crammer_class.destroy
    redirect_to crammer_classes_path
  end

  private

  def crammer_class_params
    params.require(:crammer_class).permit(:name)
  end

end
