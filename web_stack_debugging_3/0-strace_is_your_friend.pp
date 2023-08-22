#fixing WordPress webstack bug with puppet code
exec { 'debugging fix':
  command => "sed -i 's/phpp/php/' /var/www/html/wp-settings.php",
  path    => '/bin'
  }