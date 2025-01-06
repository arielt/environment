# Ruby on Rails environment

## Installation on Mac OS: Zsh
```shell
# brew
brew upgrade
brew update
brew install rbenv

# ruby - take stable version from here: https://www.ruby-lang.org/en/downloads/
brew upgrade ruby-build
ruby-build --list
rbenv install 3.4.1
rbenv versions

# add to ~/.zshrc
# >>> rbenv >>>
eval "$(rbenv init - zsh)"
# <<< rbenv <<<

# rails
rbenv local 3.4.1 # or create .ruby-version file with a content 3.4.1
ruby -v
gem install rails 8.0.1
rbenv rehash
rails -v
```

## Installation on Mac OS: Bash

```shell
# brew
brew update
brew install ruby-build
brew install rbenv
rbenv init

# make rbenv be loaded automatically
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile

# ruby
rbenv install 3.4.1
rbenv global 3.4.1
ruby -v

# rails
gem install rails 8.0.1
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
