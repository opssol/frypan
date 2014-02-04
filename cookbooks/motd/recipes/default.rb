# Cookbook Name:: motd
# Recipe:: default
#
#

# grabbed this from https://github.com/opscode/cookbooks/blob/master/motd-tail/recipes/default.rb
roles = node.run_list.roles

root_group = value_for_platform(
  ["freebsd", "netbsd"] => { "default" => "wheel" },
  "default" => "root"
)

template "/etc/motd" do
  source "motd.tail.erb"
  group root_group
  owner "root"
  mode "0644"
  backup 0
  variables(:roles => roles )
end

### END ###
