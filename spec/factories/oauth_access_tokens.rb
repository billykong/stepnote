FactoryGirl.define do
  factory :oauth_access_token, class: ::Doorkeeper::AccessToken do
    resource_owner_id { create(:user).id }
    association :application, factory: :oauth_application
    scopes 'basic all'
  end
end
