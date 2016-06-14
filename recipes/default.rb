#
# Cookbook Name:: chef_base
# Recipe:: default
#
# Copyright (C) 2016 Raintank, Inc.
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

include_recipe "chef_base::users"
include_recipe "chef_base::limits"
include_recipe "chef_base::rc_local"
include_recipe "chef_base::raintank_apt"
if node['chef_base']['k8_env']
  include_recipe "chef_base::kubeclient"
end
