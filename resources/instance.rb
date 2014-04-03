actions :create

default_action :create

attribute :instance_name, :name_attribute => true, :kind_of => String
attribute :force, :kind_of => [TrueClass, FalseClass], :default => false
