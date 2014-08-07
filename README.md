environment
===========

My environment preferences:

* OSX Terminal

* Vim

  Some Vim bundles:
  
  * git://github.com/ervandew/supertab.git

  * git://github.com/majutsushi/tagbar.git

* SSH

* Git

* Puppet

  clone this repository with submodules:

  git clone --recursive URL

  carefuly review the list of users in puppet/manifests/ruby.pp
  
  Run it as:

  puppet apply --modulepath 'puppet/modules' puppet/manifests/ruby.pp --detailed-exitcodes
