module Students
  class Engine < ::Rails::Engine
    initializer 'spina.plugin.register.students', before: :load_config_initializers do
      ::Spina::Plugin.register do |plugin|
        plugin.name       = 'Học sinh'
        plugin.namespace  = 'students'
      end
    end
  end
end
