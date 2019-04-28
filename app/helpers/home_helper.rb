module HomeHelper
  def user_signed_in?
    session['userinfo'].present?
  end

  def authenticate_user!
    if user_signed_in?
      @current_user = session['userinfo']
    else
      redirect_to root_path
    end
  end

  def current_user
    @current_user
  end

  def reset_session
    session['userinfo'] = nil if session['userinfo'].present?
  end
end
