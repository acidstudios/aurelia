require 'rails/all'
module Aurelia
  class Application < Rails::Application
    config.assets.paths << Rails.root.join("assets")
    config.assets.paths << Rails.root.join("fonts")	
  end
end