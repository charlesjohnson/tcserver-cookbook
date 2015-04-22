use_inline_resources

action :create do
  execute "create_#{new_resource.instance_name}" do
    cwd '/opt/vmware/vfabric-tc-server-standard'
    command "./tcruntime-instance.sh create #{new_resource.instance_name} --force --property base.runtime.user=root"
  end

  link "/etc/init.d/tcserver-#{new_resource.instance_name}" do
    owner 'root'
    group 'root'
    to "/opt/vmware/vfabric-tc-server-standard/#{new_resource.instance_name}/bin/init.d.sh"
  end
  new_resource.updated_by_last_action(true)
end
