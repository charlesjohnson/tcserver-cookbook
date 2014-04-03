# use_inline_resources

action :start do
  execute "start_#{new_resource.instance_name}" do
    cwd '/opt/vmware/vfabric-tc-server-standard'
    command "JAVA_HOME='/usr/lib/jvm/java' /opt/vmware/vfabric-tc-server-standard/tcruntime-ctl.sh #{new_resource.instance_name} start -i /opt/vmware/vfabric-tc-server-standard -d /opt/vmware/vfabric-tc-server-standard && sleep 5"
    # command "env"
    creates "/opt/vmware/vfabric-tc-server-standard/#{new_resource.instance_name}/logs/tcserver.pid"
  end
end
