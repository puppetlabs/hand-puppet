require 'spec_helper_acceptance'

sys_username='vagrant'

describe 'qaxcode' do
  context 'is installed' do
    it 'runs with no errors' do
      on default, "sudo -u #{sys_username} -i xcode-select -v", :acceptable_exit_codes => [0]
    end
  end
end