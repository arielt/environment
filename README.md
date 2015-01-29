environment
===========

My environment preferences:

* OSX Terminal

  Solarized Dark

* Fonts

  DejaVu Sans Mono Book

* Vim

  Install pathogen:

    https://github.com/tpope/vim-pathogen

  Install bundles:

    cd ~/.vim/bundle

    git clone git://github.com/ervandew/supertab.git

    git clone git://github.com/majutsushi/tagbar.git

    git clone git://github.com/altercation/vim-colors-solarized.git

* SSH

* Git

* Puppet

  clone this repository with submodules:

  git clone --recursive URL

  carefuly review the list of users in puppet/manifests/ruby.pp
  
  Install ruby and rvm:

  puppet apply --modulepath 'puppet/modules' puppet/manifests/ruby.pp --detailed-exitcodes

  Sometimes you need to fix rvm installer manually, by using wget instead of curl:

  wget https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer -O /tmp/rvm-installer

  Packages:

  puppet apply --modulepath 'puppet/modules' puppet/manifests/packages.pp --detailed-exitcodes

* MySQL

  Looks like puppet can't install mysql on precise

  sudo apt-get install mysql-server

  mysql -u root -p 

  To use ruby mysql gems, add this:

  sudo apt-get install libmysql-ruby libmysqlclient-dev

* Ruby

  To update rubygems:

  gem install rubygems-update

  update_rubygems

  gem update --system

  To get javascript runtime, install nodejs:

  puppet apply --modulepath 'puppet/modules' puppet/manifests/packages.pp

