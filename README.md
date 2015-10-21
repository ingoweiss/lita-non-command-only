# lita-non-command-only

[![Build Status](https://travis-ci.org/ingoweiss/lita-non-command-only.png?branch=master)](https://travis-ci.org/ingoweiss/lita-non-command-only)
[![Coverage Status](https://coveralls.io/repos/ingoweiss/lita-non-command-only/badge.png)](https://coveralls.io/r/ingoweiss/lita-non-command-only)
[![Code Climate](https://codeclimate.com/github/ingoweiss/lita-non-command-only/badges/gpa.svg)](https://codeclimate.com/github/ingoweiss/lita-non-command-only)

Adds a "non_command_only" option to routes which causes them to match only when not invoked as a command

## Installation

Add lita-non-command-only to your Lita plugin's gemspec:

``` ruby
spec.add_runtime_dependency "lita-non-command-only"
```

## Usage

``` ruby
route /foo/, :bar, non_command_only: true
```