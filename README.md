# Frankenstein

Like a Frankenstein monster of awesome, this is a static site generator powered by [Nanoc](http://nanoc.stoneship.org/) and incorporating a slew of other goodies that will rock face.

## Installation

Installation is simple and requires that you at least have Ruby and GIT installed & can finagle your way around a terminal window. If you don't know what those are then ask your nearest developer friend.

### Clone the repo & cd to the directory

    git clone git://github.com/git@github.com:bvandgrift/barcampclt.git
    
    cd barcampclt

### Install your gems

All of the required gems are handled through bundler. Install the bundler gem and it'll take care of the rest for you with it's handy `bundle install` command.

    gem install bundler
    
    bundle install

## Usage

There are a handful of handy rake commands to make managing the site easier.

### Start up the server

This will start up the Nanoc server using Thin instead of the default Webrick. Sass & Compass support are built will be autcompiled as you make changes.

    rake auto

Once started point your browser to [http://localhost:3000](http://localhost:3000).
    
### Automatically refresh your browser

You have the option of using Guard + Livereload which can you can run in another terminal window that detects changes to the Haml or Sass files & automatically refreshes the browser for you. You'll need to install the livereload browser extension first. It's available for [Safari](https://github.com/downloads/mockko/livereload/LiveReload-1.6.2.safariextz), [Chrome](https://chrome.google.com/extensions/detail/jnihajbhpnppcggbcgedagnkighmdlei), & [Firefox](https://addons.mozilla.org/firefox/addon/livereload/).

Once you have the extension installed you can start up guard in another terminal window.

    guard start
    
That's all it takes to get things set up. You can now edit away.

## Nifty things used to make the site

For those that are curious (and to lazy to poke around the repo) there are a number of nifty technologies used to make the current BarCamp VI site:

- [Nanoc](http://nanoc.stoneship.org/) is what makes it all possible. It's a static site generator and my personal favorite.
- [Haml](http://haml-lang.com/) makes writing HTML tolerable and lighting fast
- [Sass](http://sass-lang.com/) & [Compass](http://compass-style.org/), the only way to write CSS. Once you start you'll never go back to writing vanilla CSS again.
- [jQuery](http://jquery.com/), the best javascript library out there. 
- [Modernizr](http://www.modernizr.com/), amazing feature detection library. I don't start a new site without it.
- [Lettering](http://letteringjs.com/) & [FitText](http://fittextjs.com/), for amazing & complete font control.
- [Selectivizr](http://selectivizr.com/), gives IE 6-8 better support for CSS pseudo-classes.
- [Media Queries](http://www.alistapart.com/articles/responsive-web-design/)
