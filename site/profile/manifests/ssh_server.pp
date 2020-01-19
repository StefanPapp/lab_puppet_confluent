class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@svartalfheim':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABgQC53Md7mWnjiXsjF9KYm3LvCWdkL7nyMfJxgYzrbzSTwOVqDTqWqh7aTQjtPlh5lTov40xXcgCSSVpP+VAGl13mMKCj6dsWEjIjPSgmZdeYlUuvSb/AWDHdID1JijnR0ey0p8hfd7XJ9NdLaKbpHHe4PxrduZCwYouddA9KSzo0WNO8f6LT7MmX07gNTHKDnsYKqHLbUJ5OHCOxS9fYdC4hp3CillQzCrn0+VWACTzoLcewmGmkrMbQt97hpw+G75ScotGdJmIXFTnVmGHiLPnyjqBNK8e+PY3lCiBYxENFk2uuYcz+IOamt3tiKroiL2YYb6r/pwNXsP8/2NC/r0o2NTNIPFheLRghM8chVy+PJ1gR6aBdL3540/7k9ilCGzU6gos944wNJlqa9+WFD2C6/3rHbxrlpSvNiAS5m2lxEEIbl+fw9wrMbWQ6QgKI8S5bpBkC4MlhDJNVsnJyio7UE164NLgAnT94LftG7epds+EXhEybHEa1T4J0gFhb20s=',
	}  
}
