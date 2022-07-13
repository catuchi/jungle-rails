class Admin::AdminController < ApplicationController

  before_action :authenticate

  private
  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["ADMIN_USER"] && password == ENV["ADMIN_PW"]
    end
  end

end
