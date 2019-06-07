yum_package 'httpd' do
	action :install
end

service 'httpd' do
	action :start
end

template "/var/www/html/index.html" do
source "ipaddress.erb"
variables(
    ip: node['ipaddress'],
    fqdn: node['fqdn']
)
end
