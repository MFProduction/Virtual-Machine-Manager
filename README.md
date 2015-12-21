# Virtual Machine Manager
Virtual machine manager in Ruby on Rails application for creating and monitoring AWS EC2 instances

## Installation

1.  Clone this repository:
```bash
git clone https://github.com/MrStaind/Virtual-Machine-Manager
```
2. install [Redis](http://redis.io/download) and run:
```bash
bundle install 
```
3. create postgresql database and set it  in config/database.yml
4. copy .fog example to .fog in home directory and paste in your credentials from AWS (access key id, secret access id and default region )
```bash
cp .fog-example ~/.fog 
```
## Libraries
* Ruby on Rails
* Redis
* postgresql
* fog gem
* sidekiq gem
* semantic-ui