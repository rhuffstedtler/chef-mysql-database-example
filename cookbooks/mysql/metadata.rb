name 'mysql'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Provides mysql_service, mysql_config, and mysql_client resources'

version '6.0'

depends 'yum-mysql-community'
depends 'smf'
