use_inline_resources

action :create do
  execute "create_#{new_resource.instance_name}" do
    cwd '/opt/vmware/vfabric-tc-server-standard'
    if new_resource.force
      command "/opt/vmware/vfabric-tc-server-standard/tcruntime-instance.sh create #{new_resource.instance_name} --force --property base.runtime.user=root"
    else
      command "/opt/vmware/vfabric-tc-server-standard/tcruntime-instance.sh create #{new_resource.instance_name} --property base.runtime.user=root"
      # not_if { ::File.directory?("/opt/vmware/vfabric-tc-server-standard/#{new_resource.instance_name}") }
      creates "/opt/vmware/vfabric-tc-server-standard/#{new_resource.instance_name}"
    end
  end

  link "/etc/init.d/tcserver-#{new_resource.instance_name}" do
    owner 'root'
    group 'root'
    link_type :symbolic
    to "/opt/vmware/vfabric-tc-server-standard/#{new_resource.instance_name}/bin/init.d.sh"
  end
  new_resource.updated_by_last_action(true)
end
