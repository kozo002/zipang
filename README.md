# Zipang

Convert to alphabet slug from japanese

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'zipang'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zipang

## Usage

You have to set JAVA_HOME

```
# .bashrc
# This is OSX example.
export JAVA_HOME=`/usr/libexec/java_home`
```

and to run

```
Zipang.to_slug('こんにちは、世界') #=> konnichiha-sekai
```

## Contributing

1. Fork it ( https://github.com/halenohi/zipang/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
