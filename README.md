# SoloWizard #

This is the code for the solowizard.com web application.

tl;dr: With SoloWizard, you are a few clicks away from a configurable chef script for your OS-X development machine.

Many teams use chef to manage their production machines, but developers often build their development boxes by hand. SoloWizard makes it painless to create a configurable chef solo script to get your development machine humming: mysql, sublime text, .bash_profile tweaks to OS-X settings - it's all there!

## Running it locally ##

Pull down the solo_wizard source code and bundle

```
git clone git@github.com:tommyh/solo_wizard.git

cd solo_wizard

# accept the rvm version

gem install bundler --no-ri --no-rdoc
bundle install

rake db:migrate
```

Run a full build (rspec & cucumber) and confirm it passes:

```
rake
```

Seed your development database (this requires internet access):

```
thor solo_wizard_tasks:create_and_update_recipes_from_github
thor solo_wizard_tasks:update_optional_metadata
```

Start your server:

```
rails s
```

Optional: If you'd like to use foreman, which is used in production, skip "rails s" and perform the following:

```
cp .env-example .env
foreman start
```

## Notes ##

* `thor solo_wizard_tasks:create_and_update_recipes_from_github` is run as a cron task every 10 minutes, so the recipes
stay up to date.


## Special thanks ##

SoloWizard is built ontop of 3 popular and well supported open source projects: [Chef Solo](http://wiki.opscode.com/display/chef/Chef+Solo), the [pivotal_workstation](https://github.com/pivotal/pivotal_workstation) cookbook, and the [soloist](https://github.com/mkocher/soloist) gem.

Aliza Hallett (my wife) for creating the css.

## Copyright ##

Copyright © 2012 Tom Hallett. See [MIT-LICENSE](https://github.com/tommyh/solo_wizard/blob/master/MIT-LICENSE) for details.


