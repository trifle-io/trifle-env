# Trifle::Env

[![Gem Version](https://badge.fury.io/rb/trifle-env.svg)](https://badge.fury.io/rb/trifle-env)
![Ruby](https://github.com/trifle-io/trifle-env/workflows/Ruby/badge.svg?branch=main)
[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/trifle-io/trifle-env)


Simple Env store backed by Redis, Postgres, MongoDB, or whatever.

`Trifle::Env` is a way too simple Env store that stores your variables encrypted at rest

## Documentation

You can find guides and documentation at https://trifle.io/docs/env

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'trifle-env'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install trifle-env

## Usage

Did you ever wish you could update your ENV variables from your UI while storing them encrypted at rest?

```ruby
Trifle::Env['CLIENT_ID'] = 'cool_client_Id'
Trifle::Env['CLIENT_SECRET'] = 'supersecretclientsecret'

require 'oauth2'
client = OAuth2::Client.new(Trifle::Env['CLIENT_ID'], Trifle::Env['CLIENT_SECRET'], site: 'https://example.org')
...

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/trifle-io/trifle-env.
