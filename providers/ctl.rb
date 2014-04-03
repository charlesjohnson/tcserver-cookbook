# use_inline_resources

action :start do
  execute "register_#{new_resource.instance_name}" do
    cwd '/opt/vmware/vfabric-tc-server-standard'
    #command "JAVA_HOME='/usr/lib/jvm/java' /opt/vmware/vfabric-tc-server-standard/tcruntime-ctl.sh #{new_resource.instance_name} start -i /opt/vmware/vfabric-tc-server-standard -d /opt/vmware/vfabric-tc-server-standard && sleep 5"
    command "/sbin/chkconfig --add tcserver-#{new_resource.instance_name} && touch /opt/vmware/vfabric-tc-server-standard/#{new_resource.instance_name}/.chkconfig"
    # command "env"
    creates "/opt/vmware/vfabric-tc-server-standard/#{new_resource.instance_name}/.chkconfig"
  end

  execute "start_#{new_resource.instance_name}" do
	cwd '/opt/vmware/vfabric-tc-server-standard'
	command "/usr/bin/nohup /sbin/service tcserver-#{new_resource.instance_name} start"
	creates "/opt/vmware/vfabric-tc-server-standard/#{new_resource.instance_name}/logs/tcserver.pid"
  end

end

