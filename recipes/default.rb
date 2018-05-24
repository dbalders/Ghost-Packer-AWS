include_recipe 'apt'
include_recipe 'nginx'
include_recipe 'nodejs'
include_recipe 'sudo'

npm_package 'ghost-cli'

user 'www_ghost' do 
  manage_home true
  shell "/bin/bash"
  home "/home/www_ghost"
  system true
  action :create
end

user 'ghost' do
  manage_home true
  shell "/bin/bash"
  home "/home/.ghost"
  system true
  action :create
end

sudo 'www_ghost' do
  user 'www_ghost'
  nopasswd true
end

directory '/var/www/ghost' do
  owner 'www_ghost'
  group 'www_ghost'
  mode '755'
  action :create
  recursive true
end

directory '/home/vagrant/.ghost' do
  owner 'ghost'
  group 'ghost'
  mode '777'
  action :create
  recursive true
end

execute 'download and install' do
  command "ghost install -d /var/www/ghost --no-prompt --ip '0.0.0.0' --db sqlite3 --url http://127.0.0.1 --port 2368 --db-path ./content/data/ghost.db --start"
  user 'www_ghost'
end