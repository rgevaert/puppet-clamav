class clamav::params
{
  $packages           = [ 'clamav-daemon', 'clamav-freshclam']
  $package_ensure     = 'installed'
  $service_ensure     = 'running'
  $clamd_template     = 'puppet:///clamav/clamd.conf.erb'
  $freshclam_template = 'puppet:///clamav/freshclam.conf.erb'
}
