class profile::windows10_desktop{
  service{'dnscache':
          ensure=>'stopped',
          enable=>true,
         }
}
