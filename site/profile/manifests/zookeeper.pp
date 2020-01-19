class profile::zookeeper {
  class{'confluent::zookeeper':
    zookeeper_id => 1,
    heap_size => '4000M'
  }

}
