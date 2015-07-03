class security::params {
  case $::osfamily{
  Debian: {
    $ssh_daemon = 'ssh'
        }
  Redhat: {
                $ssh_daemon = 'sshd'
        }
  default: {
    err("Module security is not supported on ${::operatingsystem}")
    }
  }
}

