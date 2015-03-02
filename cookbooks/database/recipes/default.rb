mysql_service 'default' do
  port '3306'
  version '5.5'
  initial_root_password 'change me'
  action [:create, :start]
end

mysql_config 'default' do
  source 'my.cnf.erb'
  cookbook 'mysql'
  variables :config => {
              :name => "mysql",
              :port => 3306,
              :user => "mysql"
            },
            :pid_file => "/var/run/mysqld/mysqld.pid",
            :socket_file => "/var/run/mysqld/mysqld.sock",
            :include_dir => "/etc/mysql/conf.d/"
  notifies :restart, 'mysql_service[default]'
  action :create
end
