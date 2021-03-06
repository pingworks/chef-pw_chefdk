#
# Cookbook Name:: pw_chefdk
# Recipe:: default
#
# Copyright (C) 2015 Christoph Lukas
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
remote_file '/var/tmp/chefdk.deb' do
  source node['pw_chefdk']['chefdk']['url']
  checksum node['pw_chefdk']['chefdk']['sha256']
  not_if "test -f /var/tmp/chefdk.deb"
end

bash 'install chefdk' do
  code <<-EOC
    set -e
    dpkg -i /var/tmp/chefdk.deb
  EOC
  not_if 'dpkg -l chefdk'
end
