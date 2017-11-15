class module {

  # checks fact is defined and equals true before checking using specified inclusion.
  if $facts['sys_puppetize'] != undef and $facts['sys_puppetize']['enabled'] == true {

    # checks fact is defined and equals true before including qaxcode module.
    if $facts['sys_puppetize']['qaxcode'] != undef and $facts['sys_puppetize']['qaxcode'] == true {
      include xcode
    }

    # checks fact is defined and equals true before including qapackages module.
    if $facts['sys_puppetize']['qapackages'] != undef and $facts['sys_puppetize']['qapackages'] == true {
      include packages
    }

    # checks fact is defined and equals true before including qarubyecosystem module.
    if $facts['sys_puppetize']['qarubyecosystem'] != undef and $facts['sys_puppetize']['qarubyecosystem'] == true {
      include rubyecosystem
    }
  }
}

