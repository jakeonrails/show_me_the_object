# ShowMeTheObject

When an object raises an exception, have you ever wondered what it's internal
state looked like?

This gem makes it so that exception messages will contain the `#inspect`ed
version of the object that raised them.

For example:

```ruby
class Test
  def test
    @hello = "World"
    @hash = { one: 1, two: 2 }

    raise StandardError.new, "Show me the object!:"
  end
end

Test.new.test
```

The exception will look like:

```
Show me the object!: (StandardError)
Raised by:
#<Test:0x007f846315a600 @hello="World", @hash={:one=>1, :two=>2}>
```

## Downsides

Currently the backtrace is thrown off, and the first line of the backtrace will
come from this library. The second line of the backtrace will have the file
that originally raised the exception.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'show_me_the_object'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install show_me_the_object

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/show_me_the_object.

