# Rspec::Snapshot

Adding snapshot testing to rspec, inspired by [jest](http://facebook.github.io/jest/blog/2016/07/27/jest-14.html).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec-snapshot', require: "rspec/snapshot"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-snapshot

## Usage

### Rails JSON API controller testing

```ruby
describe TeamsController do
  describe "GET index" do
    it "returns a list of team" do
      get :index
      expect(response.body).to match_snapshot
    end
  end
end
```

### Rails view testing

```ruby
describe "widgets/index" do
  it "displays all the widgets" do
    assign(:widgets, [
      Widget.create!(:name => "slicer"),
      Widget.create!(:name => "dicer")
    ])

    render

    expect(rendered).to match_snapshot
  end
end
```

Use your imagination for other usages!

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rspec-snapshot.