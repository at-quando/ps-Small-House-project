require 'spina'

module Categories
  class Engine < ::Rails::Engine
    initializer 'spina.plugin.register.categories', before: :load_config_initializers do
      ::Spina::Plugin.register do |plugin|
        plugin.name       = 'Danh mục'
        plugin.namespace  = 'categories'
      end
    end
  end
end
