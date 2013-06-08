module EasyAuth::Models::Identities::Oauth2::Facebook
  def account_attributes_map
    { :username => 'username', :email => 'email', :first_name => 'first_name', :last_name => 'last_name' }
  end

  def authorize_url
    '/dialog/oauth'
  end

  def oauth2_scope
    'email'
  end

  def user_info_url
    'https://graph.facebook.com/me'
  end

  def token_url
    'https://graph.facebook.com/oauth/access_token'
  end

  def site_url
    'https://www.facebook.com'
  end

  def retrieve_uid(user_info)
    user_info['email']
  end

  def token_options(callback_url)
    super.merge(:parse => :query)
  end
end
