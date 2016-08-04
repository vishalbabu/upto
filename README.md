[![Build Status](https://travis-ci.com/arumoy-shome/upto.svg?token=mVrYXzxk6oNU1JqXerVZ&branch=master)](https://travis-ci.com/arumoy-shome/upto)

# Upto

This is the official Rails app for Upto, an FYDP initiative by

    * Ali Vira
    * Allan Zhang
    * Garrett Hardy
    * Vishal Babu

## Set up your machine
1. To download ruby
    * download
      [ruby-install](https://github.com/postmodern/ruby-install#homebrew) using
      Homebrew
    * restart your terminal, the `ruby-install` executable should now to
      available in your terminal
    * run `ruby-install ruby 2.3.0 -- --disable-install-rdoc`
    * restart terminal to pick up changes
2. To change between different ruby versions
    * we need to do this since Mac OS ships with `ruby 2.0.0` and we are using
      `ruby 2.3.0`
    * download [chruby](https://github.com/postmodern/chruby#homebrew) using
      Homebrew
    * add the following to your `.bashrc` or `.zshrc` file
        - source /usr/local/share/chruby/chruby.sh
        - source /usr/local/share/chruby/auto.sh
    * restart your terminal to pick up changes, you should now have to `chruby`
      executable on your terminal
    * to make sure installing `ruby 2.3.0` was a success, type `chruby` in your
      terminal, it will list out the ruby versions available on your computer
    * if you see `ruby 2.3.0` in the list, you are good!
    * to switch your ruby version type `chruby ruby 2.3.0`, chruby should prompt
      if the version was not changed successfully
    * **note**: the repo is setup so that it automatically changes your ruby
      version everytime you `cd` into the directory so you don't have to worry
      about the above command!
3. To setup Postgres
    * we are using `Postgresql` as our database since it works nicely with
      Heroku
    * run `brew doctor` and resolve any errors that you might have
    * run `brew update` to get the latest (recommend doing this often)
    * run `brew install postgresql`
4. To clone the repo
    * run `git clone git@github.com:vishalbabu/upto.git`
    * if you are having problems with ssh check
      [this](https://help.github.com/articles/generating-an-ssh-key/) out
5. To setup everything else
    * just run `bin/setup`, this will take care of everything else such as
      setting up the database, migrations, installing gems, etc
    * **note**: if you get an error saying bundler could not install pg, try running
    `pg -- --with-pg-config=/usr/local/bin/pg_config` and then run `bin/setup` again
6. To run the server
    * run `bin/rails server` and visit http://localhost:3000/
