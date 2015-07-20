# = Class: autofs::config
#
# Creates /automount directory and, if used, the automount directory and links
# for automount home directories
#
# Requires the use of environments and hieradata.
# Requires Hiera YAML backend.
#
class autofs::config {
  file { 'master_file':
    ensure => file,
    path   => '/etc/auto.master',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }
  concat { '/etc/auto.master':
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    notify => Service[ 'autofs' ],
  }
  
}
