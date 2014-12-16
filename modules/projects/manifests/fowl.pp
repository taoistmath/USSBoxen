class projects::fowl {

  $project = 'fowl'
  
  include projects::phoenix

  # Clone the repos
  repository {
  'fowl':
    provider => git,
    source => "${boxen::config::login}/fowl",
    path => "${boxen::config::srcdir}/projects/fowl",
  }
  
  file { "/etc/apache2/extra/httpd-vhosts":
    ensure  => file,
    content => template('apache/httpd-vhosts.erb'),
  }

}