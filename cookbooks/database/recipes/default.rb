mysql_service 'default' do
  port '3306'
  version '5.5'
  initial_root_password 'change me'
  action [:create, :start]
end

mysql_config 'default' do
  #NOTE: The example path in the docs is mysite.cnf.erb, which won't work
  source 'my.cnf.erb'
  notifies :restart, 'mysql_service[default]'
  action :create
end
