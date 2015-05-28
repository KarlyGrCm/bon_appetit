class UsersController < ApplicationController
  layout 'admin'
  before_action :find_user, only: [:show, :destroy, :edit, :update]

  def index
  	@users = User.all
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'El usuario se ha actualizado correctamente' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def user_params
      params.require(:user).permit(:email, :role_id)
  end

  def find_user
  	@user = User.find(params[:id])
  end

end