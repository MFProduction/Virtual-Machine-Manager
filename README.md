# Virtual Machine Manager
Virtual machine manager in Ruby on Rails application for creating and monitoring AWS EC2 instances

## Installation in development

*  Clone this repository:
```bash
git clone https://github.com/MrStaind/Virtual-Machine-Manager
```
* install [Redis](http://redis.io/download) and run:
```bash
bundle install 
```
* create postgresql username and set it  in config/database.yml
```bash
rake db:create
rake db:migrate 
```
* if you want example presets run:
```bash
rake db:seed
```
* copy .fog example to .fog in home directory and paste in your credentials from AWS (access key id, secret access id and default region )
```bash
cp .fog-example ~/.fog 
```
Start rails server, redis server and sidekiq
```bash
rails s
redis-server
sidekiq
```


## Libraries
* Ruby on Rails
* Redis
* postgresql
* fog gem
* sidekiq gem
* semantic-ui

