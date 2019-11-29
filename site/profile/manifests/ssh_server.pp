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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDRvoIVFpf2siWdvQELm83ANg+j1tL9sjmUNc/DUJj3hV8ZLMJOx9oSwlNIuE+RzwWos9WNp5kfZYyHCpmaAf6TTpngFwq3SYIZ0rX9/TshzITz4zCUCzX07UcF+HvTXbv57+VnFrmIttH3B9vf20a4Rr3p+PoiuQKLwkbpC9ti12JS71hZ+hprlvKcMEtDR1YXd8P5TDUc90BtOgsIclvaipoV1vlsic3GIGArubsAsdhcjh8IdJEF//368isGUMyRJjyRC1OI7QTTRrED8xZ9qAe3Naz+nRDfUPpAKwOlKfVFBo5RkWnlhJ+9qGJMLHCDIB3SdAebUzpFXjolA3rz',
	}  
}
