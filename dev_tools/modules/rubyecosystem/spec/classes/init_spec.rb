require 'spec_helper'
describe 'qarubyecosystem' do
  context 'with default values for all parameters' do
    it { should contain_class('qarubyecosystem') }
  end
end
