module ControllerMacros
  def login_user(user = FactoryGirl.create(:user))
    request.env["devise.mapping"] = Devise.mappings[:user]
    # user.confirm # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
    sign_in user
  end

  def authenicate_token(oauth_access_token = FactoryGirl.create(:oauth_access_token))
    request.headers['Authorization'] = "Bearer #{oauth_access_token.token}"
  end

  def json_body(resource)
    ActiveModelSerializers::SerializableResource.new(resource).to_json
  end

end
