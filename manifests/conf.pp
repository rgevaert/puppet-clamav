class clamav::conf
{
  file {
    '/etc/clamav/freshclam.conf':
      ensure  => present,
      owner   => 'clamav',
      group   => 'adm',
      content => template($clamav::freshclam_template),
      mode    => '0444';
    '/etc/clamav/clamd.conf':
      ensure  => present,
      owner   => 'root',
      group   => 'root',
      content => template($clamav::clamd_template),
      mode    => '0644';
  }
}
