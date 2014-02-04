current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "lioneljwhite"
client_key               "#{current_dir}/lioneljwhite.pem"
validation_client_name   "opssol-validator"
validation_key           "#{current_dir}/opssol-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/opssol"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
