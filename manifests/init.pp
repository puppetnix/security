class security(
$chkrootkit = true,
$rkhunter = true,
$ssh_port = 22,
$root_auth = 'without-password',
$password_auth = 'no',) inherits security::params {
include security::params, security::install, security::cron, security::ssh
}
