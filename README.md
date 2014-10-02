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

  Sometimes you need to fix rvm installer manually, by using wget instead of curl:

  wget https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer /tmp/rvm-installer

  Packages:

  puppet apply --modulepath 'puppet/modules' puppet/manifests/packages.pp --detailed-exitcodes

* MySQL

  Looks like puppet can't install mysql on precise

  sudo apt-get install mysql-server

  mysql -u root -p 

  To use ruby mysql gems, add this:

  sudo apt-get install libmysql-ruby libmysqlclient-dev
