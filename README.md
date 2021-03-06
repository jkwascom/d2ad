Dota 2 Ability Draft Analyzer
=============================

Like playing Dota 2 Ability Draft matches? Interested in seeing what abilities were chosen by what player and at what
levels? Like awkward, ugly output? D2AD could just be just what you’re searching for.

Installation
------------

Install D2AD using [RubyGems](http://rubygems.org/), like this:

````bash
$ gem install d2ad
````

You do have [Ruby](https://www.ruby-lang.org/) on your machine, right?

Usage
-----

To get details on the abilities chosen in a match:

```bash
$ d2ad match <MATCH_ID>
````

But wait! Where do you get the _match ID_ from? Well, normally you’d need
to use the [Steam Web API](http://wiki.teamfortress.com/wiki/WebAPI#Dota_2) to retrieve your latest matches. Hold on a sec, though—D2AD can do it for you:

````bash
$ d2ad account <ACCOUNT_ID>
````

Ugh, _another_ ID? Yeah, I’m afraid so… Thankfully there’s an easy way to
snag this one—it’s the number on the end of your
[Dotabuff](http://dotabuff.com/) profile URL. If you’re a Dota 2 player
and aren't using Dotabuff, you should go check it out and come back to
this later.

You can always check the help for all the nitty-gritty:

````bash
$ d2ad help
````

Steam Web API Key
-----------------

This gem requires that you have a Steam Web API Key so that it can talk
to Steam about all your Dota data. You can get one here:
http://steamcommunity.com/dev/apikey. Once you have your key, you can
tell D2AD to use it in one of two ways.

Set your key as a shell environment variable:

````bash
$ export STEAM_WEB_API_KEY=WHATEVER_YOUR_KEY_IS
````

You’ll most likely want to add this to your shell's config file if you plan to use D2AD frequently. If you'd prefer to not mess with an environment variable, simply pass the key along as an option when you run a D2AD command:

````bash
$ d2ad match 514604875 --key WHATEVER_YOUR_KEY_IS
````

Thanks
------

- [kronusme](https://github.com/kronusme), for the [ability data](https://github.com/kronusme/dota2-api/blob/b2da25ba0c890e721d9bb6980b68b61988f75699/data/abilities.json)

License
-------

This project is licensed under [The MIT License (MIT)](https://raw.github.com/ngscheurich/d2ad/master/LICENSE).

Legal
-----

Dota 2 is a registered trademark of Valve Corporation.
