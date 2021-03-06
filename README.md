# Spine::Parameters

[![Gem Version](https://badge.fury.io/rb/spine-parameters.svg)](http://badge.fury.io/rb/spine-parameters)
[![Dependency Status](https://gemnasium.com/rspine/parameters.svg)](https://gemnasium.com/rspine/parameters)
[![Test Coverage](https://codeclimate.com/github/rspine/parameters/badges/coverage.svg)](https://codeclimate.com/github/rspine/parameters/coverage)
[![Code Climate](https://codeclimate.com/github/rspine/parameters/badges/gpa.svg)](https://codeclimate.com/github/rspine/parameters)
[![security](https://hakiri.io/github/rspine/parameters/master.svg)](https://hakiri.io/github/rspine/parameters/master)
[![Inline docs](http://inch-ci.org/github/rspine/parameters.svg?branch=master)](http://inch-ci.org/github/rspine/parameters)
[![Codeship Status for rspine/parameters](https://codeship.com/projects/c3d614e0-e11c-0132-df07-763d3ae4d225/status?branch=master)](https://codeship.com/projects/81066)

Validates and converts parameters. Also it converts all keys to symbols.

## Installation

To install it, add the gem to your Gemfile:

```ruby
gem 'spine-parameters'
```

Then run `bundle`. If you're not using Bundler, just `gem install spine-parameters`.

## Usage

```ruby
parameters = Spine::Parameters::Collection.new(parameters_containing_hash)
parameters.required(:name)
  .integer(:id)
  .timestamp(:since)
  .boolean(:valid)
  .list(:favourites)

parameters.errors? # Checks if there is any parsing error.
parameters.errors
# => { id: ['invalid number'] }

parameters[:since]
# => <DateTime: 2014-01-01T12:00:00+00:00>
```
