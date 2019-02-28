class repo {
  
  # configure the repo we want to use
  yumrepo { 'cloudera-manager':
    enabled  => 1,
    descr    => 'Cloudera repo',
    baseurl  => 'http://localhost/cm/5.14.1/',
    gpgkey  => 'http://localhost/cm/RPM-GPG-KEY-cloudera',
    gpgcheck => 0,
  }

}
