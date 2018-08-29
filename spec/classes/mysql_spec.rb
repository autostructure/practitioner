# cat
require 'spec_helper'

describe 'practitioner::mysql' do
  context 'with defaults' do
    let(:facts) { { 'operatingsystem' => 'Centos' } }

    it { is_expected.to compile.with_all_deps }

    let(:params)
    {
      'root_password' => 'strongpassword',
      'ensure'        => 'present',
    }
  end
  # let(:node) { 'luther.practitioner' }
end
# end
