# textwrangler.pp
# Install TextWrangler for OS X
# http://www.barebones.com/products/textwrangler
#

class software::editors::textwrangler (
  $ensure  = $software::params::software_ensure,
  $version = $software::params::textwrangler_version,
  $url     = $software::params::textwrangler_url,
) inherits software::params {

  validate_string($ensure)

  case $::operatingsystem {
    'Darwin': {
      validate_string($version)
      validate_string($url)

      package { "TextWrangler-${version}":
        ensure   => $ensure,
        provider => appdmg,
        source   => $url,
      }
    }
    default: {
      fail("The ${name} class is not supported on ${::operatingsystem}.")
    }
  }

}
