class minecraft(
  $url = 'https://launcher.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar',
  $installdir = '/opt/minecraft'
  ){
  file {$installdir:
    ensure => directory,
  }
  file{"${installdir}/server.jar":
    ensure=>file,
    source=>$url,
    before => Service['minecraft'],
  }
  package{ 'java':
    ensure=>present,
  }
  file {"${installdir}/eula.txt":
    ensure => file,
    content => 'eula=true',
  }
  file {'/etc/systemd/system/minecraft.service':
    ensure=> file,
    content => epp('minecraft/minecraft.service', {
      installdir => $installdir
    }),
  }
  service {'minecraft':
    ensure => running, 
    enable => true,
    require => [Package['java'], File["${installdir}/eula.txt"], File[/etc/systemd/system/minecraft.service']],
  }
}
  
