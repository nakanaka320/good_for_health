class UsersController < ApplicationController

  def step1
    @user = User.new
  end

  def step1_save
  # if @user.varid?
    session[:family_name] = user_params[:family_name]
    session[:first_name] = user_params[:first_name]
    session[:body_weight] = user_params[:body_weight]
    session[:body_height] = user_params[:body_height]
    session[:age] = user_params[:age]
    render "users/step2"
  # else
  #   render :step1
  #   end
  end

  def step2
  end

  def step2_save
    # binding.pry
    # if @user.varid?
    session[:favorite] = user_params[:favorite]
    session[:prefecture] = user_params[:prefecture]

    @user = User.new(
      family_name: session[:family_name],
      first_name: session[:first_name],
      body_weight: session[:body_weight],
      body_height: session[:body_height],
      age: session[:age],
      favorite: session[:favorite],
      prefecture: session[:prefecture]
    )
      @user.save
      render "users/step_complet"
    # else
      # render :step1
      # end
    end

  private
  
  def user_params
    params.permit(
      :family_name,
      :first_name,
      :body_weight,
      :body_height,
      :age,
      :favorite,
      :prefecture
    )
  end
end
