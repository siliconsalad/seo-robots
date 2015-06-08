# SEORobots

A model for your robots.txt and a view to display it

## Instalation

Add this line to your application's Gemfile:

```ruby
gem 'seo_robots'
```

And then execute

    $ bundle

Or install it yourself as :

    $ gem install seo_robots

## Getting started

delete robots.txt from your public folder

```sh
rm public/robots.txt
```

create a SEO::Robot record

```ruby
SEO::Robot.create(content: "your content here")
```

## Development

Tests

    $ rake test

## Contributing

1. Fork it ( https://github.com/siliconsalad/seo-robots/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
