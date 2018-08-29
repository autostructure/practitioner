# Spec tests for MOTD.pp
require 'spec_helper'

describe 'practitioner::motd' do
  context 'with defaults' do
    let(:facts) { { 'operatingsystem' => 'Centos' } }

    it {
      is_expected.to contain_file('/etc/motd').with(
        'ensure'  => 'file',
        'owner'   => 'root',
        'group'   => 'root',
        'mode'    => '0644',
      )
    }
  end
end
