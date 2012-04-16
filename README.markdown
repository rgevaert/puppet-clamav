This is the clamav module.

It installs the clamav daemon and freshclam daemon on your Debian based host.

Usage
=====

Default configuration:

    include clamav 

Override clamd.conf and or freshclam.conf:

    class clamav (
      'clamav_template'    => 'puppet:///templates/my_clamav.erb',
      'freshclam_template' => 'puppet:///templates/my_freshclam.erb';
    )

Make sure latest packages are installed:

    class clamav (
      'package_ensure'  => latest;
    )

Stop the services (clamd and freshclam)

    class clamav (
      'service_ensure'  => 'stopped';
    }
