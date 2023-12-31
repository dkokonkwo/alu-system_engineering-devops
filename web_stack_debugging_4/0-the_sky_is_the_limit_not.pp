#fix Nginx limits with puppet code 
exec { 'debugging fix':
  command => "sed -i 's|ULIMIT=\"-n 15\"|ULIMIT=\"-n 4096\"|' /etc/default/nginx",
  path    => '/bin'
} ~>
service { 'nginx':
  ensure => running
}