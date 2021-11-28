class HealthsController < ApplicationController
  def new
    @health = Health.new
  end

  def create
    @health = Health.new(health_params)

    if @health.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def health_params
    params.require(:health).permit(:every_weight).merge(user_id: current_user.id)
  end
end
