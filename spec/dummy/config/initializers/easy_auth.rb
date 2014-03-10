EasyAuth.config do |c|
  c.oauth2_client :facebook, ENV['FACEBOOK_API_KEY'], ENV['FACEBOOK_API_SECRET']
end
