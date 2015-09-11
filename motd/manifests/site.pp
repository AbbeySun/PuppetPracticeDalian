$puppetserver = 'puppetmaster.abbeysun.com' # set global variable
node 'puppetmaster_cert.abbeysun.com'{
  include  motd
}
node 'agent1_cert.abbeysun.com'{
  include  motd

}
