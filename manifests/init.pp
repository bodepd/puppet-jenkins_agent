class jenkins_agent {
  package { 'jenkins_api_client':
    ensure   => installed,
    provider => 'gem',
  }
}
