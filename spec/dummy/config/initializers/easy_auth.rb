EasyAuth.config do |c|
  c.oauth2_client :facebook, ENV['OAUTH_FACEBOOK_CLIENT_ID'], ENV['OAUTH_FACEBOOK_SECRET']
end
