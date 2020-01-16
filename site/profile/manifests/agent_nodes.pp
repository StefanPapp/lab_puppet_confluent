class profile::agent_nodes {
  include dockeragent
  dockeragent::node { 'conf1.puppet.vm': }
  dockeragent::node { 'conf2.puppet.vm': }
  host {'conf1.puppet.vm':
    ensure => present,
    ip => '172.18.0.2',
  }
  host {'conf2.puppet.vm':
    ensure => present,
    ip => '172.18.0.3',
  }
  host {'conf3.puppet.vm':
    ensure => present,
    ip => '172.18.0.4',
  }
}
