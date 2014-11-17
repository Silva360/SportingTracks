class RegistrationsController < Devise::RegistrationsController

  protected

  def after_sign_up_path_for(resource)
    '/dashboard'
  end

  private
 
  def sign_up_params
    params.require(:user).permit(:name, :birth_date, :email, :password, :password_confirmation)
  end
 
  def account_update_params
    params.require(:user).permit(:name, :birth_date, :email, :password, :password_confirmation, :current_password)
  end

  def index
    @users = User.all
  end
end