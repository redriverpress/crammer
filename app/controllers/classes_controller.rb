class ClassesController < ApplicationController
  include SessionsHelper

  def new
    @new_classes = Crammer.new
  end

  def create
    @new_classes = Crammer.create(user_params)
    if logged_in?
      @new_classes.user_id = current_user.id
    end
    if @new_classes.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    @all_classes = Crammer.where('user_id = ?', current_user.id)
  end

  def destroy
    # @selected_classes = @all_classes.find(params[:id])
    @selected_classes.destroy
  end

  private
    def user_params
      params.require(:classes).permit(:name)
    end
end
