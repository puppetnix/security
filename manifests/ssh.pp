class security::ssh inherits security::params {
  package { 'openssh-server':
    ensure => installed,
  }
  service { $ssh_daemon:
    ensure  => running,
    enable  => true,
    require => Package['openssh-server'],
  }
  augeas { 'config_ssh':
    context => '/files/etc/ssh/sshd_config',
    changes => [
                            "set Port ${::security::ssh_port}",
                            'set PubkeyAuthentication yes',
                            "set PermitRootLogin ${::security::root_auth}",
                            "set PasswordAuthentication ${::security::password_auth}",
                ],
    require => Package['openssh-server'],
    notify  => Service[$ssh_daemon],
  }
}
