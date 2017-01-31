[![Build Status](https://travis-ci.org/marcomontalbano/kata-ruby.svg?branch=master)](https://travis-ci.org/marcomontalbano/kata-ruby)


TOC
===

* Ruby Tip & Tricks
* FizzBuzz
* Bowling


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

`rspec spec`


Easier way
----------

```ssh
bundle install
bundle exec rake
```


How to play
-----------

`ruby main.rb`
