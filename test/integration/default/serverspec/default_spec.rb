require 'spec_helper'

# Write integration tests with Serverspec - http://serverspec.org/
describe 'tcserver::default' do
  describe command('ps -ef | grep tcserver') do
    its(:stdout) { should contain 'vfabric-tc-server-standard' }
  end

  cmd = 'sudo su root \
  /opt/vmware/vfabric-tc-server-standard/myserver/bin/tcruntime-ctl.sh \
  status'

  describe command(cmd) do
    its(:stdout) { should contain 'RUNNING as' }
  end
end
