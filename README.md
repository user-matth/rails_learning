​![My Remote Image](https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FRuby_on_Rails&psig=AOvVaw1hhOC0Xkc6oKAzJ3MwIRRX&ust=1664653044099000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCIiKnP6hvfoCFQAAAAAdAAAAABAD)

# Rails Background Job

This is a personal project which the main purpuse is learning how can we use background jobs between Redis, Sidekiq and Active Job with Ruby on Rails

## Documentation

 - [Redis](https://redis.io/docs/)
 - [Sidekiq](https://github.com/mperham/sidekiq)


## Prerequisites

The setups steps expect following tools installed on the system.

- ruby `'2.6.3'`
- rails `'~> 6.0.5', '>= 6.0.5.1'`
- node `'18.2.0'`

If you don't have these specific versions, you may use `nvm` to manage node versions and `rvm` to manage ruby versions.

Try setting them like this:
```
rvm install 2.6.3          # Install v2.6.3
rvm use 2.6.3              # Use v2.6.3
```
and also:
```
nvm install v18.2.0         # Install v0.10.33
nvm use v18.2.0             # Use v0.10.33
```
## Installation

Clone the repository

```bash
  git clone https://github.com/user-matth/rails_learning.git
```
    
Bundle Rails and Install Node Module dependencies:

```bash
  bundle
  npm i // or yarn
```

Bundle Sidekiq:
```bash
bundle exec sidekiq -C config/sidekiq.yml
```

Start Redis Server:
```bash
sudo service redis-server start
```

And Finally, run your server:
```bash
rails s
```
If there's any dependency conflict, checkout your `Gemfile` and your `package.json`. Found something wrong? Contact me as fast as possible! 
## Testing job

To make sure your job is working with redis and sidekiq, you can test them by terminal:

```bash
  rails c
  JobName
```


## Authors

- [@user-matth](https://github.com/user-matth)


