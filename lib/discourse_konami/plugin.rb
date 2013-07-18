# lib/discourse_pervasive_banner/plugin.rb
require 'discourse_plugin'

module DiscourseKonami

  class Plugin < DiscoursePlugin

    def setup
      # Add our Assets
      register_js('konami')
      register_js('discourse_konami')
    end

  end
end
