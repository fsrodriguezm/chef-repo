#
# Cookbook:: users
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

chef_gem 'chef_vault' do
  compile_time true if respond_to?(:compile_time) 
end

require 'chef-vault'

user_password = ChefVault::Item.load('user_password','user1')

user 'user1' do
  comment 'User 1'
  uid 2000
  home '/home/user1'
  shell '/bin/bash'
  password user_password['password']
end
