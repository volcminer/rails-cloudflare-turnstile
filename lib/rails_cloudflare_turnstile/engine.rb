module RailsCloudflareTurnstile
  class Engine < ::Rails::Engine
    initializer "rails_cloudflare_turnstile.precompile" do |app|
      unless app.config.api_only
        %w[javascripts images].each do |sub|
          app.config.assets.paths << root.join("assets", sub).to_s
        end
      end
    end
  end
end
