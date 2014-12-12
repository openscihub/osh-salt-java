
'java-ppa': {
  'pkgrepo.managed': [
    'humanname': 'webup8team',
    'name': 'deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main',
    'dist': 'precise',
    'file': '/etc/apt/sources.list.d/webup8team.list',
    'keyid': 'EEA14886',
    'keyserver': 'keyserver.ubuntu.com'
  ]
}

'accept-oracle-license': {
  'debconf.set': [
    'name': 'oracle-java-installer',
    'data': {
      'shared/accepted-oracle-license-v1-1': {
        'type': 'boolean',
        'value': True
      }
    }
  ]
}

'oracle-java7-installer': {
  'pkg': [
    'installed',
    'require': [
      'pkgrepo': 'java-ppa'
    ]
  ]
}
