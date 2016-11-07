require 'spec_helper'
describe 'cactos_cdo' do
  context 'with default values for all parameters' do
    it { should contain_class('cactos_cdo') }
  end
end
