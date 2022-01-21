class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	include ApplicationHelper
	protect_from_forgery with: :null_session, prepend: true

end
