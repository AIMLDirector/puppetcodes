class httpd::params {
	if $osfamily ==	'Debian'  { $pkg = 'apache2' 
				$srv = 'apache2' 
				$config = '/etc/apache2/site_enabled/apache2.conf'
				}
elsif $osfamily	== 'RedHat'  { $pkg = 'httpd' 
			     $srv = 'httpd' 
			 $config = '/etc/httpd/httpd.conf'
				}
elsif $osfamily == 'Solaris'  { $pkg = 'apache'
				 $srv = 'apache'
				 $config = '/etc/apache/apache.conf'
				}
else	 {notify {" Operating system $::operatingsystem not supported":} }
		}
