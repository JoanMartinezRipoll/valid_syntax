# ValidSyntax

This gem checks if a string containing ruby code has any syntax errors. If this is the case, the syntax errors will be stored to be later accessed.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'valid_syntax'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install valid_syntax

## Usage
```
some_valid_code = "def sum; 2+3; end"
some_invalid_code = "defs sum; 2+3; end"

some_valid_code.has_valid_syntax # true
some_invalid_code.has_valid_syntax # false

some_invalid_code.syntax_errors # will return a string containing the syntax errors

```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/valid_syntax/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
