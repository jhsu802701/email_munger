[![Gem Version](https://badge.fury.io/rb/email_munger.svg)](https://badge.fury.io/rb/email_munger)
[![Dependency Status](https://gemnasium.com/jhsu802701/email_munger.svg)](https://gemnasium.com/jhsu802701/email_munger)
[![Build Status](https://travis-ci.org/jhsu802701/email_munger.svg?branch=master)](https://travis-ci.org/jhsu802701/email_munger)
[![Code Climate](https://codeclimate.com/github/jhsu802701/email_munger/badges/gpa.svg)](https://codeclimate.com/github/jhsu802701/email_munger)
[![Test Coverage](https://codeclimate.com/github/jhsu802701/email_munger/badges/coverage.svg)](https://codeclimate.com/github/jhsu802701/email_munger/coverage)
[![security](https://hakiri.io/github/jhsu802701/email_munger/master.svg)](https://hakiri.io/github/jhsu802701/email_munger/master)

# EmailMunger

Use the EmailMunger gem in your Rails app to encode displayed email addresses on web pages so that they are much less likely to be harvested by bots and bombarded with spam, yet still visible in web browsers.  Each character in an email address is converted into its HTML5 UTF-8 character code.  Additionally, the '@' and '.' characters are presented in italics.  For example, the address
`abcdefghijklmnopqrstuvwxyz0123456789@example.com` becomes `&#97;&#98;&#99;&#100;&#101;&#102;&#103;&#104;&#105;&#106;&#107;&#108;&#109;&#110;&#111;&#112;&#113;&#114;&#115;&#116;&#117;&#118;&#119;&#120;&#121;&#122;&#48;&#49;&#50;&#51;&#52;&#53;&#54;&#55;&#56;&#57;<i>&#64;</i>&#101;&#120;&#97;&#109;&#112;&#108;&#101;<i>&#46;</i>&#99;&#111;&#109;`

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'email_munger'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install email_munger

## Usage

To encode the email address abcdefghijklmnopqrstuvwxyz0123456789@example.com in a Ruby environment, enter the following command:
`EmailMunger.encode('abcdefghijklmnopqrstuvwxyz0123456789@example.com')`

The result is:
`&#97;&#98;&#99;&#100;&#101;&#102;&#103;&#104;&#105;&#106;&#107;&#108;&#109;&#110;&#111;&#112;&#113;&#114;&#115;&#116;&#117;&#118;&#119;&#120;&#121;&#122;&#48;&#49;&#50;&#51;&#52;&#53;&#54;&#55;&#56;&#57;<i>&#64;</i>&#101;&#120;&#97;&#109;&#112;&#108;&#101;<i>&#46;</i>&#99;&#111;&#109;`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/email_munger. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Bash Scripts
### Testing this gem
After you download this source code, enter `sh gem_test.sh` to set up and test this gem.

### Testing this gem's source code
Enter `sh code_test.sh` to test the quality of this gem's source code.
### Running this gem in irb
Enter `sh gem_console.sh`.

### Installing this gem
Enter `sh gem_install.sh`.
### Testing the gem, source code, and installation process
Enter `sh all.sh` to run the gem_test.sh, code_test.sh, and gem_install.sh scripts.
