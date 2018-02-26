require 'spina'

module Albums
  class Engine < ::Rails::Engine
    initializer 'spina.plugin.register.events', before: :load_config_initializers do
      ::Spina::Plugin.register do |plugin|
        plugin.name       = 'Albums'
        plugin.namespace  = 'albums'
      end
    end
  end
end
