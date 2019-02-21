class profile::windows10_desktop{
  service{'appVclient':
          ensure=>'Running',
          enable=>true,
         }
}
