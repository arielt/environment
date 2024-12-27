# Ruby and Ruby on Rails environment

## Installation on Mac OS: Zsh
```shell
brew upgrade
brew update
brew install rbenv

# latest stable version from here: https://www.ruby-lang.org/en/downloads/
rbenv install 3.3.5
rbenv versions

# add to ~/.zshrc
# >>> rbenv >>>
eval "$(rbenv init - zsh)"
# <<< rbenv <<<

# Rails
# check ruby is the latest stable
rbenv local 3.3.5
ruby -v
gem install rails
rbenv rehash
rails -v
```

## Installation on Mac OS: Bash

### Ruby via rbenv

```shell
brew update
brew install ruby-build
brew install rbenv
rbenv init

# make rbenv be loaded automatically
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile

rbenv install 2.4.2
rbenv global 2.4.2
ruby -v
```

### Rails

```shell
gem install rails 5.1.4
rbenv rehash # make rails available in rbenv
rails -v
```

### Postgres client

```shell
brew install libpq
gem install pg -- --with-pg-config=/usr/local/homebrew/opt/libpq/bin/pg_config
```

### Create app with PostgreSQL

```shell
rails new app --database=postgresql
```

## References

- [Go Rails using asdf](https://gorails.com/setup/macos/14-sonoma)
- [Using rbenv](https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-macos)
