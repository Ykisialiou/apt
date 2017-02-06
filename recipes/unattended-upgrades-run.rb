# Cookbook:: apt
# Recipe:: unattended-upgrades-run

execute 'unattended-upgrades' do
  command 'sudo unattended-upgrades -d'
end

execute 'uname' do
  command 'uname -a'
end
