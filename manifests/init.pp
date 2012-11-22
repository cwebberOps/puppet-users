# == Class: users
#
# This class is used to wrap user resources defined in hiera
#
# === Examples
#
#  class { users: }
#
# === Authors
#
# Christopher Webber <cwebberops@gmail.com>
#
# === Copyright
#
# Copyright 2012 Christopher Webber, unless otherwise noted.
#
class users {

  $users = hiera('users')

  create_resources(user, $users)

}
