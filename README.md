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
  
  Install ruby and rvm:

  puppet apply --modulepath 'puppet/modules' puppet/manifests/ruby.pp --detailed-exitcodes

  Packages:

  puppet apply --modulepath 'puppet/modules' puppet/manifests/packages.pp --detailed-exitcodes
