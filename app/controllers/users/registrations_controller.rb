class Users::RegistrationsController < Devise::RegistrationsController

  before_filter :sign_up_params, :only => [:create]

 private
   def sign_up_params
     params.require(:user).permit(:company_name, :first_name, :last_name, :email, :password, :password_confirmation)
   end
end
