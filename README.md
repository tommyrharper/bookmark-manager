# Bookmark Manager

## My approach
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
Run bundle to install dependencies
```
bundle
```
