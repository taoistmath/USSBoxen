class projects::infrasys {

  repository { 
    'salt-config':
      provider => git,
      source => "${boxen::config::login}/salt-config",
      path => "${boxen::config::srcdir}/projects/salt-config";
    'jenkins-jobs':
      provider => git,
      source => "${boxen::config::login}/jenkins-jobs",
      path => "${boxen::config::srcdir}/projects/jenkins-jobs",
  }

}