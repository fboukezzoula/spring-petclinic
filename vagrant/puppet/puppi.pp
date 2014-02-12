# create the puppi project
puppi::project::war { 'petclinic-puppi':
  source => 'file:///vagrant/petclinic.war',
  deploy_root => '/var/lib/tomcat7/webapps',
}

# deploy the petclinic WAR
exec { 'deploy-petclinic':
  command => '/usr/sbin/puppi deploy petclinic-puppi',
  path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ]
}
