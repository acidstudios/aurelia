# About Aurelia

Hi! [Aurelia](http://www.aurelia.io) is a next gen Javascript framework for mobile, desktop and web that leverages simple conventions to empower your creativity.

## Installation

Include it in your Gemfile

```ruby
gem 'aurelia'
```

And then execute Bundler:

    $ bundle install

## Usage

## Initializing Aurelia
Install all Aurelia dependencies with this command:

    $ rails g aurelia:install

If you want to specify a Application Layout name and a Aurelia App Name, you could specify:
 
    $ rails g aurelia:install Layout_Name Module_Name

It will generate a Layout for your Rails app, also de Main .js that Aurelia uses.

## Generate a Module
Aurelia uses a ES6/ES7 class for our view model, also a Html file, this both files conforms a module, to create one type the following:

    $ rails g aurelia:module Module_Name


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/acidstudios/aurelia.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

