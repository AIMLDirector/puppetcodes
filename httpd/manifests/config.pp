class httpd::config{
		include httpd::params
		file { "httpd-config":
		ensure => 'present',
		name => "$httpd::params::config",
		source => 'puppet:///modules/httpd/httpd_sample',
			}
		}
