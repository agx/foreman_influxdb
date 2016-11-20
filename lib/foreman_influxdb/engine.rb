module ForemanInfluxdb
  class Engine < ::Rails::Engine
    engine_name 'foreman_influxdb'

    initializer 'foreman_influxdb.register_plugin', :after => :finisher_hook do
      Foreman::Plugin.register :foreman_influxdb do
        requires_foreman '> 1.10'
      end
    end

    initializer 'foreman_influxdb.setup_notifications' do
      opts = SETTINGS[:influxdb] || {}
      ForemanInfluxdb::Client.new(opts)
    end
  end
end
