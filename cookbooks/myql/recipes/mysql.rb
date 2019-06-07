yum_package 'mariadb-server' do
	action :install
end

service 'mariadb' do
	action :start
end
