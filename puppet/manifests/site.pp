node 'puppet-sala.dexter.com.br' {
	include 'puppet-web'
}
node 'docker-automation' {
        include 'puppet-automation'
}
