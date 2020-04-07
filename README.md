# Bookmark Manager

## How to start building this from scratch
First I created a new repository on GitHub.

Then on my mac in my command line I did the following:
```
mkdir bookmark-manager
cd bookmark-manager
echo "# bookmark-manager" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:tommyrharper/bookmark-manager.git
git push -u origin master
```
Then I ran the following my my projects root directory 'bookmark-manager' via the terminal:
```
git init
bundle init
rspec --init
```
I added the following dependencies to the Gemfile:
```
gem 'capybara'
gem 'rspec'
gem 'rubocop'
gem 'simplecov'
gem 'simplecov-console'
gem 'sinatra'
```
Run bundle to install dependencies, and set up file system.
```
bundle
mkdir app
touch app/bookmark_manager.rb
mkdir app/views
touch app/views/index.erb
touch config.ru
mkdir lib
```
Add to bookmark_manager.rb
```ruby
require 'sinatra/base'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  run! if app_file == $0
end
```
Add to config.ru
```ruby
require_relative './bookmark_manager/bookmark_manager.rb'
run BookmarkManager
```
Add to index.erb
```
Hello World
```
Run:
```
rackup
```
Visit in browser:
```
localhost:9292
````
Hello World should now be working.

But we are not finished yet.

Now we need to update spec/spec_helper.rb by adding the following code at the top of the file:
```ruby
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'simplecov'
require 'simplecov-console'
require File.join(File.dirname(__FILE__), '../app', 'bookmark_manager.rb')

Capybara.app = BookmarkManager

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start
```
run rspec to ensure it works
```
rspec
```
Hopefully you will get this response:
```ruby
Finished in 0.00062 seconds (files took 0.782 seconds to load)
0 examples, 0 failures


COVERAGE: 100.00% -- 0/0 lines in 0 files
```
Lets also change rubocop's settings:
```
touch .rubocop.yml
```
Then add to .rubocop.yml
```ruby
inherit_from:
  - https://raw.githubusercontent.com/makersacademy/scaffolint/v1.1.0/.rubocop.yml
```
Okay you are now ready to go!

