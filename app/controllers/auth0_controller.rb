class Auth0Controller < ApplicationController
  # Set session[:userinfo] when authentication succeeds
  def callback
    session[:userinfo] = request.env['omniauth.auth']

    redirect_to '/dashboard'
  end

  # Render failure when something goes wrong.
  def failure
  end
end
