# Graphical representation of the values of Bitcoin, Ethereum and Nasdaq.

## Getting Started

After you have cloned this repo, run bundle install

    % bundle install

It assumes you have a machine equipped with Ruby, Postgres, etc. If capybara webkit is not installed properly follow the instructions on [this link].

[this link]: https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit

After setting up, create a database and migrate it

	% rails db:create
	% rails db:migrate
	% rials s

After setting up, visit you [local host]:

[local host]: http://localhost:3000/

## Overview

A web application visualizing the value of three currencies: BitCoin (BTC), Ethereum (ETH) and Nasdaq. Build with Ruby Rails framework and HighCharts JavaScript library for the graphs.


## Running Tests

Run rspec in terminal

All the tests are passing with 100% coverage