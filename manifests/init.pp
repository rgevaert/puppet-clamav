class clamav (
  $package_ensure     = $clamav::params::package_ensure,
  $service_ensure     = $clamav::params::service_ensure,
  $clamd_template    = $clamav::params::clamd_template,
  $freshclam_template = $clamav::params::freshclam_template,
  $packages           = $clamav::params::packages
) inherits clamav::params
{

  class { 'install':;} ~>
    class { 'conf':;} ~>
    class { 'service':;}
}
