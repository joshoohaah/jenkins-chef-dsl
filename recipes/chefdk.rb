require 'chef/sugar'

# if ubuntu?
#   chefdk_file = 'chefdk_0.6.0-1_amd64.deb'
#
#   remote_file "#{Chef::Config[:file_cache_path]}/#{chefdk_file}" do
#     source "https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/#{chefdk_file}"
#   end
#   dpkg_package "#{Chef::Config[:file_cache_path]}/#{chefdk_file}" do
#     action :install
#   end
# end
#
# if rhel?
#   chefdk_file = 'chefdk-0.6.0-1.el6.x86_64.rpm'
#
#   remote_file "#{Chef::Config[:file_cache_path]}/#{chefdk_file}" do
#     source "http://opscode-omnibus-packages.s3.amazonaws.com/el/6/x86_64/#{chefdk_file}"
#   end
#   rpm_package "#{Chef::Config[:file_cache_path]}/#{chefdk_file}" do
#     action :install
#   end
# end

include_recipe 'chef-dk'
