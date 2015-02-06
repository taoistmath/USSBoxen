class projects::automation {

  $project = 'automation'

  #include mongodb
	
  # Clone the repos
  repository {
  'tarantula':
    provider => git,
    source => "${boxen::config::login}/tarantula",
    path => "${boxen::config::srcdir}/Sites/tarantula";
  'jehp':
    provider => git,
    source => "${boxen::config::login}/jehp",
    path => "${boxen::config::srcdir}/Sites/jehp";
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
    path => "${boxen::config::srcdir}/Sites/mycredit";
  'fowl':
    provider => git,
    source => "${boxen::config::login}/fowl",
    path => "${boxen::config::srcdir}/projects/fowl";
  'phoenix':
    provider => git,
    source => "${boxen::config::login}/phoenix",
    path => "${boxen::config::srcdir}/projects/phoenix",

  }

  file { "/etc/apache2/extra/credentials.include":
    ensure  => file,
    content => template('apache/credentials.erb'),
  }

  file { "/etc/apache2/extra/httpd-vhosts.conf":
    ensure  => file,
    content => template('apache/httpd-vhosts.erb'),
  }

}