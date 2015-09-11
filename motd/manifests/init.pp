class motd{            # define a 'motd' class
  package{ 'setup':    # define package resource
    ensure =>absent , # require a 'setup' package need to be installed.
  }
  file{ '/etc/motd':     # define file resouce
    ensure  => present,  # require '/etc/motd'file need to be present.
    owner   => 'root',   # require file owner to root
    group   => 'root',   # require file group to root
    mode    => '0644',   # require file permission to 644
    source  => "puppet://$puppetserver/modules/motd/etc/motd", #require file is downloaded from puppetmaster server
    require => Package['setup'], #execute package resource before file is applied
  }
}
