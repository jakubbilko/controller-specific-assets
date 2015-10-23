[![Gem](https://img.shields.io/gem/v/controller-specific-assets.svg?style=flat-square)](https://rubygems.org/gems/controller-specific-assets)
[![Build Status](https://travis-ci.org/jakubbilko/controller-specific-assets.svg?branch=master)](https://travis-ci.org/jakubbilko/controller-specific-assets)

***

# Controller Specific Assets
This gem was created to help solve the problem in asset (css/js) management in Rails applications. Usually, all of the javascript and css files are loaded on every page in your app. This kinda sucks for big apps that have a lot of front-end code.

The idea is simple: load controller-specific js/css assets, so that you can decide what modules/libraries you need for your views.

## Installation
Add the gem to your Gemfile:

```
gem 'controller-specific-assets', '~> 0.2.25'
```

And run ``` bundle install ``` from your project's directory.

## Usage

In your layout file, replace the ``` stylesheet_link_tag ``` and ``` javascript_include_tag ``` with the gem's helpers: ``` controller_javascript_tag ``` and ``` controller_stylesheet_tag ```.

When you're in a view, them gem looks for css and js files named ``` controller_[your_controller_name].(js/css) ``` files and adds them. If you don't have controller-specific files, it reverts to ``` application.(js/css) ```.

The gem automatically adds css and js files starting with ```controller_``` to the precompile assets list, so you don't have to.

## Using the asset paths
If you just want the raw js/css paths (to use with gems like [RequireJS](https://github.com/jwhitley/requirejs-rails), use the ```controller_javascript_url``` and ```controller_stylesheet_url``` helper methods.

## TODO
* add support for view-specific assets (if you are a hardcore bandwidth-optimization freak)
