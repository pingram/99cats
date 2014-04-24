class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  include SessionsHelper

  def get_form_auth_token
    "<input type='authenticity_token' name='hidden' value='#{form_authenticity_token}'>"
  end
end
