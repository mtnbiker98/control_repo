class profile::windows10_desktop{
  service{'AppVClient':
          ensure=>'Running',
          enable=>true,
         }
}
