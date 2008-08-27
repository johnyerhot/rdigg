require 'yaml'
desc 'Creates a setup YAML file in your config directlry'
task :rdigg_setup do

  defaults = {:api_key => 'test.com', :api_uri => "http://services.digg.com" }

  config_dest = "#{RAILS_ROOT}/config/rdigg.yml"

  unless File.exists?(config_dest)
      puts "Copying rdigg.yml config file to #{config_dest}"
      File.open(config_dest, 'w') { |f| f.write(YAML.dump(defaults)) }
  end

end