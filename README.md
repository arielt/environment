Environment
===========

## OSX Terminal

Theme: Solarized Dark

Font: DejaVu Sans Mono Book 12

Colorful output:

    ~/.bash_profile:
    export CLICOLOR=1
    export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

## Sublime

Install PackageControl

Install packages:

  * MarkdownPreview
  * BeautifyRuby

Configuration files:

    Preferences -> Settings - More -> Syntax Specific - User:
    {
      "tab_size": 2,
      "translate_tabs_to_spaces": true
    }

    Preferences -> Key Bindings - User
    [
      { "keys": ["command+l"], "command": "show_overlay {\"overlay\": \"goto\", \"text\": \":\"}"}
    ]


## Vim

Install pathogen:

  * https://github.com/tpope/vim-pathogen

Install bundles:

    cd ~/.vim/bundle
    git clone git://github.com/ervandew/supertab.git
    git clone git://github.com/majutsushi/tagbar.git
    git clone git://github.com/altercation/vim-colors-solarized.git

## Puppet

Clone this repository with submodules:

    git clone --recursive URL

Carefuly review the list of users in puppet/manifests/ruby.pp

Install ruby and rvm:

    puppet apply --modulepath 'puppet/modules' puppet/manifests/ruby.pp --detailed-exitcodes

Sometimes you need to fix rvm installer manually, by using wget instead of curl:

    wget https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer -O /tmp/rvm-installer

Packages:

    puppet apply --modulepath 'puppet/modules' puppet/manifests/packages.pp --detailed-exitcodes


Or

  Use standard way:

    puppet module install puppetlabs-stdlib
    puppet module install camptocamp-openldap
    puppet module install spantree-phpldapadmin
    puppet module install maestrodev-rvm
    sudo puppet apply --modulepath '/home/ubuntu/.puppet/modules' puppet/manifests/openldap.pp --detailed-exitcodes
    sudo puppet apply --modulepath '/home/ubuntu/.puppet/modules' puppet/manifests/phpldapadmin.pp --detailed-exitcodes
    sudo puppet apply --modulepath '/home/ubuntu/.puppet/modules' puppet/manifests/ruby.pp --detailed-exitcodes

## MySQL

Looks like puppet can't install mysql on precise

    sudo apt-get install mysql-server
    mysql -u root -p

To use ruby mysql gems, add this:

    sudo apt-get install libmysql-ruby libmysqlclient-dev

## Ruby and Ruby on Rails

[RoR.md](RoR.md)

## Git
```shell
    # set the user in the current repo
    git config user.name "John Doe"
    git config user.email john.doe@gmail.com

    # check settings
    git config --list
```
