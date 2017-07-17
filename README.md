# Crammer

Crammer is an LMS app with tasks for you to complete. Good luck!

## Setup

NOTE: PostgreSQL, Poltergeist, and Qt are dependencies of this app. If you do not have an environment that supports these, you may use [this virtual machine](https://github.com/redriverpress/rails-dev-box).

1. Install ruby 2.3.3 with `rbenv install 2.3.3`
2. Install bundled gems with `bundle install`
3. Define your database config at `config/database.yml` (See `config/database.example.yml` for help).
4. Run `bundle exec rake db:create` to create your development and test databases.
5. Run `bundle exec rake db:test:prepare` to load the schema into your test database.

## Instructions

TODO: Write instructions
