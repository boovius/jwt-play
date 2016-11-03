class HomeController < ApplicationController
  before_action :authenticate_user!
  before_action :set_authentication_token

  def index; end

  private

  def set_authentication_token
    payload = {current_user_email: current_user.email}
    @token = JWT.encode payload, 'new-secret', 'HS256'
  end
end
