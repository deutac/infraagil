class puppet-automation {

    package {'java-1.8.0-openjdk':
        ensure => installed,
    }

#    package {'rundeckrepo':
#        ensure   => installed,
#        provider => 'rpm',
#        source   => 'http://repo.rundeck.org/latest.rpm',
#        require  => Package['java-1.8.0-openjdk'],
#    }

    package {'rundeck':
        ensure  => installed,
#        require => Package['rundeckrepo']
    }

    service {'rundeckd':
        ensure  => running,
        require => Package['rundeck'],
    }

}
