#
# Cookbook:: lamp
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'lamp::web'
include_recipe 'lamp::database'

apt_update 'daily' do
  frequency 86_400
  action :periodic
end
