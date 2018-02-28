require 'spina'

module Courses
  class Engine < ::Rails::Engine
    initializer 'spina.plugin.register.courses', before: :load_config_initializers do
      ::Spina::Plugin.register do |plugin|
        plugin.name       = 'Courses'
        plugin.namespace  = 'courses'
      end
    end
  end
end
