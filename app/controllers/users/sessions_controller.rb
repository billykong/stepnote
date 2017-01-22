class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  before_action :doorkeeper_authorize!, only: [:oauth]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    super
  end

  # GET /resource/oauth_sign_in
  def oauth
    resource = doorkeeper_token.resource_owner_id &&
      User.find_by(id: doorkeeper_token.resource_owner_id)
    if resource
      sign_in(resource)
      redirect_to params[:return_to] || after_sign_in_path_for(resource)
    else
      redirect_to params[:return_to] || root_url
    end
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
