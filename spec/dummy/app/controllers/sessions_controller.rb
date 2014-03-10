class SessionsController < ApplicationController
  include EasyAuth::Controllers::Sessions

  def new
    redirect_to Identities::Oauth2::Facebook.authenticate_url(oauth2_callback_url(provider: :facebook))
  end

  private

  def after_successful_sign_in_url
    main_app.dashboard_url
  end
end
