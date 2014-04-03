TCServer Cookbook
=================

This cookbook installs & configures tcserver.

Requirements
------------

### Platform:

* Tested on EL 6.4

### Cookbooks:

* Java 

Attributes
----------

* ['tcserver']['rpm_filename'] - Name of installation RPM for tcserver
* ['tcserver']['rpm_url'] - Download URL for the installation RPM for tcserver
* ['tcserver']['rpm_sum'] - Checksum for the installation RPM for tcserver

Recipes
-------

### tcserver::default

* Installs & configures tcserver from RPM.

Testing
-------

The cookbook provides the following Rake tasks for testing:

    rake foodcritic                   # Lint Chef cookbooks
    rake integration                  # Run all tests, including kitchen
    rake kitchen:all                  # Run all test instances
    rake kitchen:default-centos-64    # Run default-centos-64 test instance
    rake kitchen:default-ubuntu-1204  # Run default-ubuntu-1204 test instance
    rake rubocop                      # Run RuboCop style and lint checks
    rake spec                         # Run ChefSpec examples
    rake test                         # Run all tests except Kitchen

License and Author
------------------

Author:: Charles Johnson <charles@getchef.com>

Copyright:: 2014, Chef Software, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
