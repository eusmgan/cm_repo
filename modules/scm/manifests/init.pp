class scm {


$ssh_packages = ['cloudera-manager-agent.x86_64', 'cloudera-manager-server.x86_64', 'oracle-j2sdk1.7.x86_64', 'cloudera-manager-daemons.x86_64']

package { $ssh_packages:
    ensure => present,
}


}
