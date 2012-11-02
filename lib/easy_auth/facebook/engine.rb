module EasyAuth::Facebook
  class Engine < ::Rails::Engine
    isolate_namespace EasyAuth::Facebook

    config.generators do |g|
      g.test_framework :rspec, :view_specs => false
    end
  end
end
