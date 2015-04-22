if defined?(ChefSpec)
  def create_tcserver_instance(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:tcserver_instance, :create, resource_name)
  end

  def start_tcserver_ctl(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:tcserver_ctl, :start, resource_name)
  end
end
