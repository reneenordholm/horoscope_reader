# Horoscope Reader

Horoscope Reader is a command line interface that scrapes data from Horoscope.com to present the user's selected horoscope.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'horoscope_reader'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install horoscope_reader

## Usage

 To access the horoscope, install the gem as described above and run the CLI program the terminal.  User will be presented with 12 astrological signs to choose from by number.  Upon entering the number associated with the user's sign, the program will then output the user's horoscope for the current day and ask the user if they would like to view another horoscope.  If the user selects the option to view another horoscope, the program will run again, displaying the list of available signs for the user to pick from; if the user does not wish to view another horoscope, the program will say goodbye to the user and exit.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/run` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'reneenordholm'/horoscope_reader. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the HoroscopeReader project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'reneenordholm'/horoscope_reader/blob/master/CODE_OF_CONDUCT.md).
