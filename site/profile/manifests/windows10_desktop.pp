class profile::windows10_desktop{
  service{'AppVClient':
          ensure=>'running',
          enable=>true,
         }
}
