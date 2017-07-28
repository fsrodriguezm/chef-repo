execute 'install_tomcat' do
  command 'yum install tomcat -y'
end

execute 'install_admin_packages' do
  command 'sudo yum install tomcat-webapps tomcat-admin-webapps -y'
end

execute 'tomcat_user' do
  command 'echo "<tomcat-users>
	<user name="admin" password="welcome" roles="admin,manager,admin-gui,admin-script,manager-gui,manager-script,manager-jmx,manager-status" />
</tomcat-users>" >> /usr/share/tomcat/conf/tomcat-users.xml'
end

execute 'start_service' do
  command 'sudo systemctl start tomcat'
end
