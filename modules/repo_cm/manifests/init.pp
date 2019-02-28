class repo_cm {

  include ::wget

  package { 'httpd':
    ensure => 'installed',
  }

#  wget::fetch { "download": source => "http://archive.cloudera.com/cm5/repo-as-tarball/5.14.1/cm5.14.1-centos7.tar.gz", destination => "/tmp/", }


#  exec {'unpack_file_sql.gz':
#    unless => '/usr/bin/test -f /tmp/cm5.14.1-centos7.tar',
#    path => '/usr/local/bin/:/bin/',
#    cwd => '/tmp',
#    command => 'gunzip cm5.14.1-centos7.tar.gz',
#  }


  exec { 'gunzip cm5.14.1-centos7.tar.gz':
    cwd     => '/tmp',
    creates => '/tmp/cm5.14.1-centos7.tar',
    path    => ['/usr/bin', '/usr/sbin',],
  }

  exec { 'tar xvf cm5.14.1-centos7.tar':
    cwd     => '/tmp',
    creates => '/tmp/cm',
    path    => ['/usr/bin', '/usr/sbin',],
  }


  file { 'Move contents':
    ensure  => directory,
    path    => '/var/www/html/cm/',
    source  => '/tmp/cm/',
    recurse => true,
  }  


}
