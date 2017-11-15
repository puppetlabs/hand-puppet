require 'spec_helper_acceptance'

sys_username='vagrant'

describe "qavmpoolerbitbar" do
  context 'is installed' do
    it "Bitbar" do
        on default, "ls '/Applications/Bitbar.app'", :acceptable_exit_codes => [0]
    end
    it "Plugin" do
      command = "ls /Users/#{sys_username}/plugins/vmpooler-bitbar.30s.rb"
      on default, "sudo -u #{sys_username} -i #{command}", :acceptable_exit_codes => [0]
    end
  end
end