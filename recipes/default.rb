#
# Cookbook Name:: tools
# Recipe:: default
#
# Install any packages we find useful in a base machine:

tools = %w( lsof nmap tree ntp )

if node['platform_family'] == 'rhel'
  tools << 'dos2unix'
  tools << 'unix2dos'
elsif node['platform_family'] == 'debian'
  tools << 'tofrodos'
else
  Chef::Application.fatal!("Oops!  I'm untested on this platform_family: #{node['platform_family']}")
end

tools.each do |pkg|
  package pkg
end

service "ntpd" do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end
