current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                'frodriguez'
client_key               '/root/chef-repo/.chef/frodriguez.pem'
validation_client_name   '4thcoffee-validator'
validation_key           '/root/#{current_dir}/4thcoffee-validator.pem'
chef_server_url          'https://ip-172-31-62-237.ec2.internal/organizations/4thcoffee'
syntax_check_cache_path  '/root/chef-repo/.chef/syntax_check_cache'
cookbook_path             ["#{current_dir}/../cookbooks"]
