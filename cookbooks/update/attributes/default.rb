case node["platform_family"]
when "rhel" 
  default['update']['update_command'] = "yum update -y"
when "debian"
  default['update']['update_command'] = "apt-get update -y"
end
