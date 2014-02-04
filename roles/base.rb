name "base"
description "base role, applies to every node, everywhere, everywhen"
run_list(
  'ntp',
  'motd',
  'chef-client::config',
  'chef-client::service',
  'build-essential',
  'opssol::default',
  'opssol::users'
)
  },
  "authorization" => {
    "sudo" => {
      "passwordless" => true,
      "include_sudoers_d" => true
    }
  }
)
