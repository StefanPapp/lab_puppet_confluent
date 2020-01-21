class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@niflheim':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC2S/UBIjS8MXaBNKuCQAdFA1v2P8NcAxT8J0e0hz4jc0bsA2/2XgZKYyY0Gm9Ac8VdFoad8aReotN+WhP29I2BIRr2wArzgv8p0qAse6Bu0rL5St1xB+m3yvGm25jG4FW8mNwksNEJ1JV1yXa8kReR1AzD5zHygPVWXzalZluhfC/6W2w0V5+8AG/D5I3EUTJfZZ1fqu6cjkPV4ZTARYxsK4L/7dzO/ZbgZWurrr2AaLDVUsqdOBv6pQjfcx62iSGn8k7XZY+d6NMQMUEEa9wwjFB0axVoHFd2FtdGqjAqnGimjMMsulHqE+3/BlmS2sSRxjkipnwcW7BGWDcVzhM7',
	}  
}
