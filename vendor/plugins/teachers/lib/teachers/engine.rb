require 'spina'

module Teachers
  class Engine < ::Rails::Engine
    initializer 'spina.plugin.register.teachers', before: :load_config_initializers do
      ::Spina::Plugin.register do |plugin|
        plugin.name       = 'Teachers'
        plugin.namespace  = 'teachers'
      end
    end
  end
end
