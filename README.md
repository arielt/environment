# Environment

## macOS Terminal
Color Theme: Basic

## Visual Studio Code
Color Theme: Quiet Light

## Git
```shell
    # set the user in the current repo
    git config user.name "John Doe"
    git config user.email john.doe@gmail.com

    # check configuration
    git config --list
```

## [Node](Node.md)

## [Ruby on Rails](RoR.md)

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
