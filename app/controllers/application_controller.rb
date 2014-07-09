class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  protected

  def after_sign_in_path_for(resource)
    current_user.has_permission?(:projectdetails) ? projectdetails_path : root_path
  end

  private

  def require_admin
    msg = (current_user.is_admin? ? '' : "permissions not_permitted")
    access_denied_redirect(msg)
  end

  def require_leader
    msg = (current_user.is_leader? ? '' : "permissions not_permitted")
    access_denied_redirect(msg)
  end

  def required_access
    unless current_user.has_permission?(params[:controller].to_sym)
      access_denied_redirect("permissions not_permitted")
    end
  end

  def access_denied_redirect(msg)
    if msg.present?
      redirect_to root_path, flash: { error: msg }
    end
  end

end
