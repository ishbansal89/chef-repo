#
# Cookbook:: vsftpd
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.


yum_package 'vsftpd' do
	action :install
end

service 'vsftpd' do
	action :start
end
