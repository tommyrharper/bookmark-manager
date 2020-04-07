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
gem 'rspec'
gem 'sinatra'
gem 'capybara'
gem 'rubocop'
gem 'simplecov'
gem 'simplecov-console'
```
Run bundle to install dependencies, and set up file system.
```
bundle
mkdir bookmark_manager
touch bookmark_manager/bookmark_manager.rb
mkdir bookmark_manager/views
touch bookmark_manager/views/index.erb
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