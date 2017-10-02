execute "update-upgrade" do 
	command "apt-get update && apt-get upgrade -y"
	action :run
end

package "apache2" do
	action:install
end

service 'apache2' do
	action [:enable, :start]
end
