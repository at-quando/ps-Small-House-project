require 'spina'

module SubCategories
  class Engine < ::Rails::Engine
    initializer 'spina.plugin.register.sub_categories', before: :load_config_initializers do
      ::Spina::Plugin.register do |plugin|
        plugin.name       = 'Sub categories'
        plugin.namespace  = 'sub_categories'
      end
    end
  end
end
