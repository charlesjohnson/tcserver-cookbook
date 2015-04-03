require 'spec_helper'

describe 'tcserver::default' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new do |node|
      node.set['tcserver']['rpm_filename'] = 'vfabric-tc-server-standard-2.9.5-SR1.noarch.rpm'
      node.set['tcserver']['rpm_url'] = "https://dl.dropboxusercontent.com/u/3639771/#{ node['tcserver']['rpm_filename'] }"
      node.set['tcserver']['file_cache_path'] = '/tmp'
    end.converge(described_recipe)
  end

  before do
    stub_command('/opt/vmware/vfabric-tc-server-standard/myserver/bin/tcruntime-ctl.sh status').and_return(['RUNNING as'])
  end

  it 'fetches the rpm' do
    expect(chef_run).to create_remote_file "/tmp/#{chef_run.node['tcserver']['rpm_filename']}"
  end

  it 'installs the rpm package' do
    expect(chef_run).to install_rpm_package chef_run.node['tcserver']['rpm_filename']
  end

  it 'creates the tcserver instance' do
    expect(chef_run).to create_tcserver_instance('myserver')
  end

  it 'starts the tcserver instance using ctl' do
    expect(chef_run).to start_tcserver_ctl('myserver')
  end
end
