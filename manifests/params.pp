class clamav::params
{
  $packages           = [ 'clamav-daemon', 'clamav-freshclam']
  $package_ensure     = 'installed'
  $service_ensure     = 'running'
  $clamd_template     = 'clamav/clamd.conf.erb'
  $freshclam_template = 'clamav/freshclam.conf.erb'
}
