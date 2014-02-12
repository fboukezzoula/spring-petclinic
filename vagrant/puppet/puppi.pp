# create the puppi project
puppi::project::war { 'petclinic-puppi':
  source => 'https://alm.finaxys.com:44312/view/puppet/job/puppet-petclinic-DEV-CLOUD/ws/target/petclinic.war',
  deploy_root => '/var/lib/tomcat7/webapps',
}

# deploy the petclinic WAR
exec { 'deploy-petclinic':
  command => '/usr/sbin/puppi deploy petclinic-puppi',
  path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ]
}
