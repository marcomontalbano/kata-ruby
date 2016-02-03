[![Build Status](https://drone.io/github.com/mmontalbano/kata-ruby-tt/status.png)](https://drone.io/github.com/mmontalbano/kata-ruby-tt/latest)


Ruby Tip & Tricks
=================


How to configure
----------------

Make sure you have the latest RVM:

`rvm get stable`

Just run this in your favorite terminal after installing RVM:

`rvm install ruby-2.0.0`

Create a new gemset and use it:

`rvm use ruby-2.0.0-p247@tdd --create`

Install rspec:

`gem install rspec`


How to test
-----------

`rspec spec/ruby_tt_spec.rb`


Easier way
----------

```ssh
bundle install
bundle exec rake
```
