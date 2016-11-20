require 'influxdb-rails'

module ForemanInfluxdb
  class Client
    attr_reader :influx
    attr_reader :database

    def initialize(opts = {})
      @database = 'theforeman'
      InfluxDB::Rails.configure do |config|
        config.influxdb_database = @database
        config.influxdb_username = opts[:username]
        config.influxdb_password = opts[:password]
        config.influxdb_hosts    = opts[:hosts] || ['localhost']
        config.influxdb_port     = opts[:port] || '8086'
        config.series_name_for_controller_runtimes = 'theforeman.controller'
        config.series_name_for_view_runtimes       = 'theforeman.view'
        config.series_name_for_db_runtimes         = 'theforeman.db'
      end
      @client = InfluxDB::Rails.client
      @client.create_database if opts[:create_database]
    end
  end
end
