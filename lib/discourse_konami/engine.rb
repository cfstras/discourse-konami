require 'discourse_konami/plugin'

module DiscourseKonami

  class Engine < Rails::Engine
    engine_name 'discourse_konami'

    initializer "discourse_konami.configure_rails_initialization" do |app|

      app.config.after_initialize do
        DiscoursePluginRegistry.setup(DiscourseKonami::Plugin)
      end
    end
  end
end
