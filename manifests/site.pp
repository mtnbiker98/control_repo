node default {

}

node 'win10' {
   include role::windows10_desktop
   file {'c:\README.txt':
            ensure => file, 
            content => "Hello World",
        }
}

node 'master.puppet.vm' {
    include role::master_server
        file {'/root/README':
      ensure  => file,
      content => "Welcome to ${fqdn}\n",
      owner => 'root',
    }
}

node 'mine.puppet.vm' {
    include role::mine_server
}

node /^ssh/ {
    include role::ssh_server
}   

node /^web/ {
    include role::app_server
}

node /^db/ {
    include role::db_server
}
