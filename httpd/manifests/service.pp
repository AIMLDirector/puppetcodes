class httpd::service {
	include httpd::params
	service { 'httpd-service':
		ensure => 'running',
		name => "$httpd::params::srv",
		enable => 'true',
		}
	}
