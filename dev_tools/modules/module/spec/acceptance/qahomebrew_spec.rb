require 'spec_helper_acceptance'

sys_username='vagrant'

describe 'qahomebrew' do
  context 'is installed' do
    it 'runs with no errors' do
      command = 'brew doctor'
      on default, "sudo -u #{sys_username} -i #{command}", :acceptable_exit_codes => [0]
    end
  end
end