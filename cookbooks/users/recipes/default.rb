#
# Cookbook:: users
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
credentials = data_bag_item('user_password', 'samu')

user 'samu' do
  comment 'Samuel Rodriguez'
  uid 2000
  home '/home/samu'
  shell '/bin/bash'
  password credentials['password']
end
