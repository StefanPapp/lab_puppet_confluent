class profile::zookeeper {
  class{'confluent::zookeeper':
    zookeeper_id => 1,
    heap_size => '1000M'
  }

}
