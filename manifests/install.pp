class security::install{
              package { ['chkrootkit', 'rkhunter']  :
    ensure => installed,
  }
}
