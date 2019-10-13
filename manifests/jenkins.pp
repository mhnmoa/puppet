# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::jenkins
class profile::jenkins {

  class { 'jenkins':
    lts                => true,
    port               => 8082,
    config_hash        => {
      'JENKINS_PORT' => {
        'value' => '8082'
      },
    },
    configure_firewall => true,
  }

  package { 'git':
    ensure => latest,
  }
}
