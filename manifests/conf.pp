class clamav::conf
{
  file {
    '/etc/clamav/freshclam.conf':
      ensure  => present,
      owner   => 'root',
      group   => 'root',
      content => $clamav::freshclam_template,
      mode    => '0644';
    '/etc/clamav/clamd.conf':
      ensure  => present,
      owner   => 'root',
      group   => 'root',
      content => $clamav::clamd_template,
      mode    => '0644';
  }
}
