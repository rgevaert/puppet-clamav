class clamav::service
{
  service {
    'clamav-freshclam':
      ensure     => $clamav::service_ensure,
      hasstatus  => true,
      hasrestart => true;
    'clamav-daemon':
      ensure     => $clamav::service_ensure,
      hasstatus  => true,
      hasrestart => true;
  }
}
