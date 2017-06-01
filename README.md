# BrazilianCardinal

[![Build Status](https://travis-ci.org/leandro/cardinality-br.svg?branch=master)](https://travis-ci.org/leandro/cardinality-br)

This gem has the simple purpose of expressing a number or currency in its cardinal form in the brazilian language.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cardinality-br'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cardinality-br

## Usage

```ruby
require 'brazilian_cardinality'

# cardinality example for ordinary numbers
BrazilianCardinality::Number.number_cardinal(78) # returns 'setenta e oito'

# cardinality for currency value
BrazilianCardinality::Currency.currency_cardinal(43.76) # returns 'quarenta e três reais e setenta e seis centavos'
```

## Development

- check out the repo
- run `bin/setup` to install dependencies
- run `rake test` to run the tests
- you can also run `bin/console` for an interactive prompt that will allow you to experiment

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/cardinality-br. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
