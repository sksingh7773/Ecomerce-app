class RegistrationController < Devise::RegistrationController
	def sign_up_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation,  address_attributes: [:address_1, :address_2, :city, :country, :postal_code])
	end

	def account_update_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password , address_attributes: [:address_1, :address_2, :city, :country, :postal_code])


	end
end
