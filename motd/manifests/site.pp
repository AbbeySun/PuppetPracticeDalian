$puppetserver = 'puppetmaster.abbeysun.com' #设置全局变量
node 'puppetmaster_cert.abbeysun.com'{
  include  motd
}
node 'agent1_cert.abbeysun.com'{
  include  motd
}