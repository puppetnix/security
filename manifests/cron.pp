class security::cron  {
if $::security::chkrootkit {
cron { chkrootkit:
command => "/usr/bin/nice -15 /usr/sbin/chkrootkit > /root/chkrootkit.log",
hour => '3',
minute => '0',
}
}
else {
cron { chkrootkit:
ensure => absent,
}     
}
if $::security::rkhunter {
cron { rkhunter:
command => "/usr/bin/nice -15 /usr/bin/rkhunter -c --sk > /root/rkhunter.log",
hour => '3',
minute => '0',
}
}
else {
cron { rkhunter:
ensure => absent,
}

}
}
