class profile::ssh_server{
  package {'openssh-server':
              ensure => present,
          }
  service {'sshd':
            ensure=>'running',
            enable=>'true',
          }
  ssh_authorized_key { 'root@master.puppet.vm':
                        ensure => present,
                        user => 'root',
                        type => 'ssh-rsa',
                        key => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDsIewqmfMQ5sNCBl/4pw4xyxnaLudsepf8yN7CdAOucHQgOzXwDqUi1W5ZsgeafH9H/T5nhcWwzPyA4gLrB9zapD+ZKwrg8J9Gm+3mqCBHmIW3CCPN2NNybyG2kXrYAr4CUqfoEtv/ahdf66JE3hwL0fzFBeraNpiHtXWFkdyxHvzU8cXyK0/WyQ5kDcFJzfbdqRSdQ9CWhLg50wIpl2huhMh9NuMuhwrcS/R6WEvx4u7hbxi4GrvE91p/oSdDeNkcNjxeHnGf4nTp6MxdHomPDpDtHehHmjfyBOfK1q3hSkexgH15uQJw3jdSH9NgzvjKxnkqCy67egoxUpq4IgA/',
                    }
}
