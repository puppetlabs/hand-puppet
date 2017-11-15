require 'spec_helper'
describe 'qaxcode' do
  context 'with default values for all parameters' do
    it { should contain_class('qaxcode') }
  end
end
