class profile::windows10_desktop{
  service{'dnscache':
          ensure=>'running',
          enabled=>true,
         }
}
