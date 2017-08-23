#
# Cookbook:: update
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

execute "update"  do
  command node["update"]["update_command"]
end
