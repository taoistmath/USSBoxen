class projects::helios {

  $project = 'helios'

  include mongodb

  # Clone the repos
  repository {
  'helios':
    provider => git,
    source => "${boxen::config::login}/helios",
    path => "${boxen::config::srcdir}/Sites/helios";
  'verified':
    provider => git,
    source => "${boxen::config::login}/verified",
    path => "${boxen::config::srcdir}/Sites/verified";
  'mycredit':
    provider => git,
    source => "${boxen::config::login}/mycredit",
    path => "${boxen::config::srcdir}/Sites/mycredit",
  }

  file { "/etc/apache2/extra/credentials.include":
    ensure  => file,
    content => template('apache/credentials.erb'),
  }

  file { "/etc/apache2/extra/httpd-vhosts":
    ensure  => file,
    content => template('apache/httpd-vhosts.erb'),
  }

}