
  class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  include ActionController::HttpAuthentication::Token::ControllerMethods

  def default_serializer_options
    { root: false }
  end 

  def token
    authenticate_with_http_basic do |email, password|
      user = User.find_by(email: email)
      if user && user.password == password
        render json: { token: user.auth_token }
      else
        render json: { error: 'Incorrect credentials' }, status: 401 
      end 
    end
  end 
end
