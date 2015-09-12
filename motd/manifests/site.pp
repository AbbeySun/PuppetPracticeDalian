$puppetserver = 'puppetmaster.abbeysun.com' #设置全局变量
node default {
}
node 'puppetmaster_cert.abbeysun.com'{
  include  motd
}
node 'agent1_cert.abbeysun.com'{
  include  motd
}
node 'agent2_cert.abbeysun.com'{
  include  motd
}
node 'agent3_cert.abbeysun.com'{
  include  motd
}
