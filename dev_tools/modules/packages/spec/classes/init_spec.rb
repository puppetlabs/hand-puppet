require 'spec_helper'
describe 'qapackages' do
  context 'with default values for all parameters' do
    it { should contain_class('qapackages') }
  end
end
