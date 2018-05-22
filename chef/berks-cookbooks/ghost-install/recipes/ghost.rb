include_recipe 'apt'
include_recipe 'nginx'
# include_recipe 'ghost-blog'

directory '/var/www/nginx-default' do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  recursive true
  action :create
end
