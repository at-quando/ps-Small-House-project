require 'spina'

module Articles
  class Engine < ::Rails::Engine
    initializer 'spina.plugin.register.articles', before: :load_config_initializers do
      ::Spina::Plugin.register do |plugin|
        plugin.name       = 'Bài viết'
        plugin.namespace  = 'articles'
      end
    end
  end
end

