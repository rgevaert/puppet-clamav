class clamav::service
{
  service {
    'clamav-freshclam':
      ensure      => $clamav::service_ensure;
      #pattern    => 'freshclam',
      #hasstatus  => true,
      #hasrestart => true,
    'clamav-daemon':
      ensure      => $clamav::service_ensure;
      #pattern    => 'clamd',
      #hasstatus  => true,
      #hasrestart => true,
  }
}
