class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	include CurrentCart
    before_action :set_cart
	protect_from_forgery with: :null_session, prepend: true

end
