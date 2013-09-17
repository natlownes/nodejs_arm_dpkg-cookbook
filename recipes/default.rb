#
# Cookbook Name:: nodejs_arm_dpkg
# Recipe:: default
#
# Copyright 2013, Nat Lownes
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
execute "install-nodejs-arm-dpkg" do
  command %{
    dpkg -i #{Chef::Config[:file_cache_path]}/nodejs-arm.dpkg
  }

  action :nothing
end

remote_file "#{Chef::Config[:file_cache_path]}/nodejs-arm.dpkg" do
  source node['nodejs_arm_dpkg']['dpkg_url']
  checksum  node['nodejs_arm_dpkg']['checksum']

  notifies :run, "execute[install-nodejs-arm-dpkg]"
end

