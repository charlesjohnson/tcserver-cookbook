name             'tcserver'
maintainer       'Charles Johnson'
maintainer_email 'charles@opsocde.com'
license          'Apache 2.0'
description      'Installs/configures tcserver'
version          '0.1.1'
recipe           'tcserver::default', 'Installs/configures tcserver'

depends 'java'
