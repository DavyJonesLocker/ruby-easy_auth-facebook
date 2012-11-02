require 'easy_auth/facebook/engine'

module EasyAuth
  def self.o_auth2_facebook_identity_model(controller)
    EasyAuth::Identities::OAuth2::Facebook
  end

  module OAuth2::Facebook
    extend ActiveSupport::Autoload
    autoload :Controllers
  end

  module Controllers::Sessions
    include EasyAuth::OAuth2::Facebook::Controllers::Sessions
  end

  module Models::Identities::OAuth2
    autoload :Facebook
  end
end
