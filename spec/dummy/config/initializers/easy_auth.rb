EasyAuth.config do |c|
  c.oauth2_client :facebook, ENV['FACEBOOK_API_KEY'], ENV['FACEBOOK_APP_SECRET']
end
