#
# Cookbook Name:: testperl
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
cookbook_file '/home/user/test.pl' do
  source 'test.pl'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end




=begin
#ruby_block 'reload_client_config' do
#  block do
require 'mixlib/shellout'
  find = Mixlib::ShellOut.new("/usr/bin/perl /home/user/test.pl")
  find.run_command 
puts find.stdout  
#end
# action :run
#end
=end



execute 'run script' do
  cwd '/home/user'
  command '/usr/bin/perl /home/user/test.pl' 
end

file '/home/user/test.pl' do
  action :delete
end
