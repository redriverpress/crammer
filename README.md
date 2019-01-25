# Crammer

Crammer is an LMS app with tasks for you to complete. Good luck!

## Setup

NOTE: PostgreSQL, Poltergeist, and Qt are dependencies of this app. If you do not have an environment that supports these, you may use [this virtual machine](https://github.com/redriverpress/rails-dev-box).

1. Install ruby 2.3.3
2. Install bundled gems with `bundle install`
3. Define your database config at `config/database.yml` (See `config/database.example.yml` for help).
4. Run `bundle exec rake db:create` to create your development and test databases.
5. Run `bundle exec rake db:test:prepare` to load the schema into your test database.

## Instructions

NOTE: If you are unfamiliar with testing rails, be sure to study up on [RSpec](https://github.com/rspec/rspec-rails#model-specs), [FactoryGirl](https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md#defining-factories), [ShouldaMatchers](https://github.com/thoughtbot/shoulda-matchers#activemodel-matchers), [SitePrism](https://github.com/natritmeyer/site_prism#introduction-to-the-page-object-model), and [Turnip/Cucumber](https://github.com/jnicklas/turnip#usage).

Complete the following user stories (including system level sub-tasks). The front end for these user stories is entirely up to you. You may use Angular, React, or pure server-side view rendering.

1. As admin, I want to be able to manage users, so that I can create, update, and destroy users on the site.
  - Register users with ActiveAdmin
  - Add filter for user emails
  - Include state radio buttons on the edit form

2. As a user, I want to be able to create classes, so that I can define logical groups for students.
  - Create a controller called `Crammer::ClassesController` with `#new` and `#create` actions
  - Test this controller action with RSpec (via controller unit test)

3. As a user, I want to be able to list classes, so that I can see all of my classes.
  - Add an `#index` action to `Crammer::ClassesController`
  - Only load classes created by the current user
  - Test the listing of students with RSpec (via acceptance test)

4. As a user, I want to be able to remove classes, so that I can delete an old class.
  - Add a `#destroy` action to `Crammer::ClassesController`

5. As a user, I want to be able to add student users to my classes, so that I can place students into logical groups.
  - Create a model called `Crammer::Placement` with a user_id and a crammer_class_id (eg. `user, reference, NOT NULL` and `crammer_class, reference, NOT NULL`)
  - Validate presence of user and crammer class
  - Test these validations and associations with RSpec (via model unit test)
  - Create a controller called `Crammer::PlacementsController` with `#new` and `#create` actions

6. As a user, I want to see a student count for each class, so that I know how many students are in a given class.
  - Add a student count to each class rendered in `Crammer::ClassesController#index`
