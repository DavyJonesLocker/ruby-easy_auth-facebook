EasyAuth.config do |c|
  c.o_auth2_client :facebook, ENV['OAUTH_FACEBOOK_CLIENT_ID'], ENV['OAUTH_FACEBOOK_SECRET']
end
