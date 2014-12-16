class projects::phoenix {

  # Clone the repos
  repository {
  'phoenix':
    provider => git,
    source => "${boxen::config::login}/phoenix",
    path => "${boxen::config::srcdir}/projects/phoenix",
  }

}