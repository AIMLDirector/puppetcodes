class httpd::install {
		include httpd::params
			package  { "httpd-pkg":
				ensure => 'installed',
				name => "$httpd::params::pkg",
				}

			}

