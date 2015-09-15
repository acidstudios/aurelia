# About Aurelia

Hi! Aurelia is a next gen Javascript framework for mobile, desktop and web that leverages simple conventions to empower your creativity.

## Installation

Include it in your Gemfile

```ruby
gem 'aurelia'
```

And then execute Bundler:

    $ bundle install

## Usage

Install all Aurelia dependencies with this command:

    $ rails g aurelia:install

This gem includes a Layout for your application, simply use this in your controllers:
```ruby
layout 'appaurelia'
```

Or modify your current layout to include your Aurelia Application:
```html
<body aurelia-app="main">

<%= yield %>

</body>
``` 
Also you need to include jsmp.js in your application.js(or whatever you use):
```javascript
//= require jspm
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/acidstudios/aurelia.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

