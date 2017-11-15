## Introduction

This is a module that allows a new team member to get up and running ASAP. It uses Puppet to install and configure your development environment for you. 

## What does it install?

- Homebrew - A package manager for Mac.
- Google Chrome - A popular web browser
- Virtual Box - A software virtualisation package, it is also required to run tests on this module.
- Ruby Ecosystem - All tools required to develop in Ruby
- xcode - A tool that makes development easier
- RVM - A ruby version manager, we have chosen RVM as the majority of people use RVM

## How do I use this

Firstly you need to create a yaml file called: `sys_puppetize.yaml`.
This yaml file needs to be located on your Mac at `/opt/puppetlabs/facter/facts.d`.

```yaml
---
sys_puppetize:
  enabled: false
  xcode: false
  packages: false
  rubyecosystem: false
---
```

By default all of the components are disabled. You must set enabled to true and then set the components you want to install to true.


## How do I run the tests?

`module` is being used as a placeholder, it then calls all of the other modules. Therefore you want to run tests from the following directory: `hand-puppet/dev_tools/module`.

- Navigate to the `module` directory: `cd modules/module`
- Install required gems: `bundle install --path .bundle/gems/`
- Run the tests: `bundle exec rake acceptance`

## Limitations

All running tests are currently hardcoded with the user 'vagrant' as the Vagrant image users are 'vagrant'.

## Additional Information

- **You don't want to run this if you have rbenv installed, your Ruby enviroment will conflict**
<!-- - **This is only available to QA team members** -->

## Compatibility

This has been tested on 'Sierra' and 'Ruby 2.3.1'.
