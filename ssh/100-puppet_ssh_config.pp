# Changes configuration file to turn off password auth and use priv key
file { 'etc/ssh/ssh_config':
  content => 'PasswordAuthentication no
  IdentityFile ~/.ssh/school',
}
