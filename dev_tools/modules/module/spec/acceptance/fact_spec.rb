require 'spec_helper_acceptance'

describe 'custom fact' do
  context 'setting a user' do
    # Using puppet_apply as a helper
    it 'should work idempotently with no errors' do
      pp = <<-EOS
      if $facts['sys_username'] != 'vagrant' {
        err("$sys_username is not the correct 'sys_username' value")
      }
      debug("sys_username value: $sys_username")
      EOS

      apply_manifest(pp, :catch_failures => true)
    end
  end
end
