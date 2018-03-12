require 'spina'

module Money
  class Engine < ::Rails::Engine
    initializer 'spina.plugin.register.money', before: :load_config_initializers do
      ::Spina::Plugin.register do |plugin|
        plugin.name       = 'Quản lý tiền học'
        plugin.namespace  = 'money'
      end
    end
  end
end
