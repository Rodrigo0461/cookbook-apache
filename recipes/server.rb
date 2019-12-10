package 'httpd'

file '/var/www/html/index.html' do
	content "<h2> Hola Mundo Cruel ! jejejej </h2>
	<h2> IPADDRESS: #{node['ipaddress']} </h2>
	<h2> HOSTANAME: #{node['hostname']} </h2>
"
end

service 'httpd' do
	action [ :enable, :start ]
end
