# cat
require 'spec_helper'

describe 'practitioner::mysql' do
  context 'with defaults' do
    let(:facts) { { 'operatingsystem' => 'Centos' } }

    let(:params) do
      it { is_expected.to compile.with_all_deps }

      {
        'root_password' => 'strongpassword',
        'ensure'        => 'present',
      }
    end
  end
  # let(:node) { 'luther.practitioner' }
end
# end
