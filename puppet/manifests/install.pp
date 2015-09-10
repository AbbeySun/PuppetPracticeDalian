class puppet::install{
  include puppet::puppet_install,puppet::facter_install
}
class puppet::puppet_install{
  package { 'puppet':
    ensure => $operatingsystemmajrelease ?{ #判断系统版本
      5 => '2.7.25-1.el5',
      6 => '2.7.25-1.el6',
      7 => '3.8.2-1.el7',
    }
  }
}
class puppet::facter_install{
  package { 'facter':
    ensure =>latest,
   /* ensure => $operatingsystemmajrelease ?{
      5 => '1.7.5-1.el5',
      6 => '1.7.5-1.el6',
      7 => '2.4.3-1.el7',
      #7 => '2.4.4-1.el7',
    }*/
  }
}
class postfix::install{
        package { "postfix":
                ensure => absent,
        }
}
