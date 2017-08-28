# Rack::XRobotsTag

This is a small Rack middleware that will add the [`X-Robots-Tag`](https://developers.google.com/search/reference/robots_meta_tag) header to your responses. This indicates to crawlers that your site should not be indexed and is useful for staging and testing sites.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rack-x_robots_tag'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-x_robots_tag

## Usage

In your `config.ru` simply use the middleware based upon whatever constraints you may have. For example, if your staging environment has an environment variable called `DISABLE_ROBOTS` here is how you might mount it.

    use Rack::XRobotsTag if ENV['DISABLE_ROBOTS']

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `x_robots_tag.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/my-rent/rack-x_robots_tag. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Rack::XRobotsTag project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/my-rent/rack-x_robots_tag/blob/master/CODE_OF_CONDUCT.md).
