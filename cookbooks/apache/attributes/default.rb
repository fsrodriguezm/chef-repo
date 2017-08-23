# attributes
#
default["apache"]["sites"]["johngamble-gmail-com3"] = { "site_title" => "John's Website - coming soon", "port" => 80, "domain" => "johngamble-gmail-com3.mylabserver.com" } 
default["apache"]["sites"]["johngamble-gmail-com3b"] = { "site_title" => "John's Website number 2 - coming soon!!!!", "port" => 80, "domain" => "johngamble-gmail-com3b.mylabserver.com" }
default["apache"]["sites"]["johngamble-gmail-com4"] = { "site_title" => "John's Website Ubuntu #3 - coming soon!!!!", "port" => 80, "domain" => "johngamble-gmail-com4.mylabserver.com" }

case node["platform"]
when "centos"
	default["apache"]["package"] = "httpd"
when "ubuntu"
	default["apache"]["package"] = "apache2"
end

