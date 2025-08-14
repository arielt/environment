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
rbenv install 3.4.5
rbenv versions

# add to ~/.zshrc
eval "$(rbenv init -)"

# rails
rbenv local 3.4.5 # or create .ruby-version file with a content 3.4.1
ruby -v
gem install rails 8.0.1
rbenv rehash
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
