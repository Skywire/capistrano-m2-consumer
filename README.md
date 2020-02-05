# M2 Consumer

- Gem for capistrano to kill off M2 consumers on a new release to prevent a build up of duplicate consumers
- It uses the deployment user to check if there are consumers and then kills them

## Add to your project:

Add the following to your project Gemfile

~~~
gem 'capistrano-m2-consumer', :git => 'git@github.com:Skywire/capistrano-m2-consumer.git', :branch => 'master'
~~~

Then run 

~~~
bundle install
~~~

Add the following to your project Capfile

~~~
require "capistrano/m2-consumer"
~~~