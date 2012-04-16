class clamav::install
{
  package{
    $clamav::packages:
      ensure  => $clamav::package_ensure;
  }
}
