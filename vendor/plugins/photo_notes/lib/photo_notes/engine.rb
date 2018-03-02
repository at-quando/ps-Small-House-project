require 'spina'

module PhotoNotes
  class Engine < ::Rails::Engine
    initializer 'spina.plugin.register.photo_notes', before: :load_config_initializers do
      ::Spina::Plugin.register do |plugin|
        plugin.name       = 'Chú thích hình ảnh'
        plugin.namespace  = 'notes'
      end
    end
  end
end
