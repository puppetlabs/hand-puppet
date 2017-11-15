require 'spec_helper_acceptance'

sys_username='vagrant'

describe "qabashprofile" do
  context 'is installed' do
    it "Profile" do
      command = "ls /Users/#{sys_username}/.qabashprofile"
      on default, "sudo -u #{sys_username} -i #{command}", :acceptable_exit_codes => [0]
    end
  end
end