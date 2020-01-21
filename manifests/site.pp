node default {
  file { '/root/puppet_run_confirmation':
    ensure => file,
    content => 'Just highlighting that puppet was executed',
    owner   => 'root',
  }
}
node 'niflheim' {
  include role::master_server
}
node /^conf1/ { 
  include role::zookeeper
}

node /^conf2/ { 
  include role::zookeeper
}

node /^conf3/ { 
  include role::zookeeper
}
