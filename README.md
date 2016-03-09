# Homework

This is a gem designed to allow you run a number of processes involving the GitHub API. 
The functions include:
	
	1. Get full user info
	2. List teams within an organization
	3. List members of an organization by team name
	4. List issues assigned to a user
	5. Close issues assigend to a user
	6. Comment on issues

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'homework'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install homework

## Usage

	1. Initialize a homework module with the following script: github = Homework::Github.new
	2. Call the appropriate method using: Github.("HTTP Verb" i.e. PATCH)("/some/route", headers: @headers, body: { option: "value" }.to_json)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/homework. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

