node default {
  file { '/root/puppet_run_confirmation':
    ensure => file,
    content => 'Just highlighting that puppet was executed',
    owner   => 'root',
  }
}
node 'svartalfheim' {
  include role::master_server
}
