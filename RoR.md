# Ruby and Ruby on Rails environment

## Installation on Mac OS

### Ruby via rbenv

    brew update && brew upgrade ruby-build

    # make rbenv be loaded automatically
    echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile

    rbenv install 2.4.2
    rbenv global 2.4.2
    ruby -v

### Rails

    gem install rails 5.1.4
    rbenv rehash # make rails available in rbenv
    rails -v

### Create app with PostgreSQL

    rails new app --database=postgresql
