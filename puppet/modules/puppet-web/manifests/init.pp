class puppet-web {
    package {'apache2':
        ensure => installed,
        before => Service['apache2']
    }

    service {'apache20':
        ensure => 'running'
    }
