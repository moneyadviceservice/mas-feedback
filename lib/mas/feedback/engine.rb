module MAS
  module Feedback
    class Engine < Rails::Engine
      initializer 'mas-feedback.setup_precompile_hooks', :group => :all do |app|
        app.config.assets.precompile += [
          'zenbox.css',
          'zenbox.js'
        ]
      end

      config.i18n.load_path += Dir[config.root.join(*%w{lib mas feedback locales *.{rb,yml}})]
    end
  end
end