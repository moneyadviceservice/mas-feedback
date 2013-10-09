module MAS
  module Feedback
    class Engine < Rails::Engine
      initializer 'mas-feedback.setup_precompile_hooks', :group => :all do |app|
        app.config.assets.precompile += [
          'zenbox.css',
          'zenbox.js'
        ]
      end
    end
  end
end