# Cookbook:: apt
# Recipe:: unattended-upgrades-run

execute 'unattended-upgrades' do
  command 'sudo unattended-upgrades -d'
end

ruby_block 'reload_client_config' do
  block do
  puts "--- unattended upgrade file START here"
  file = File.open("/var/log/unattended-upgrades/unattended-upgrades.log", "rb")
  contents = file.read
  puts content
  puts "--- unattended upgrade file END here"
  end
end
