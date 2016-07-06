# Carrierwave Globalize

Use Globalize to manage Carrierwave translated fields.

**Disclaimer:** This is an early implementation and could contain some bugs.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'carrierwave_globalize', github: 'dalpo/carrierwave_globalize'
```

And then execute:

    $ bundle install


## Usage

After the definition of your `Globalize` translated attributes, extend your model with the `CarrierwaveGlobalize` module and use the `mount_translated_uploader` class method to mount your carrierwave uploader.

**Example:** Given an `Asset` model with a translated column `attachment`.

```ruby
class Asset < ApplicationRecord
  extend CarrierwaveGlobalize

  # Globalize translated attributes
  translates :attachment

  mount_translated_uploader :attachment, AttachmentUploader
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dalpo/carrierwave_globalize. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
