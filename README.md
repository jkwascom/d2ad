Dota Ability Draft Analyzer
===========================

Like playing Dota 2 Ability Draft matches? Interested in seeing what abilities were chosen by what player and at what
levels? Like awkward, ugly output? DADA could just be just what you're searching for.

Installation
------------

Install DADA like:

`gem install dada`

You do have [Ruby](https://www.ruby-lang.org/) on your machine, right?

Usage
-----

To get details on the abilities chosen in a match:

`$ dada match <MATCH_ID>`

But wait! Where do you get the match ID from? Well, normally you'd need
to use the Steam Web API to retrieve your latest matches. Hold on a sec,
though--DADA can do it for you:

`$ dada account <ACCOUNT_ID>`

Ugh, another ID? Yeah, I'm afraid so. Thankfully there's an easy way to
snag this one--it's the number on the end of your
[DOTABUFF](http://dotabuff.com/) profile URL. If you're a Dota player
and aren't using DOTABUFF, you should go check it out and come back to
this later.

Check `dada help` for all the nitty-gritty.

Steam Web API Key
-----------------

This gem requires that you have a Steam Web API Key so that it can talk
to Steam about all your Dota data. You can get one here:
http://steamcommunity.com/dev/apikey. Once you have your key, you can
tell DADA to use it in one of two ways.

Set your key as a shell environment variable:

`$ export STEAM_WEB_API_KEY=WHATEVER_YOUR_KEY_IS`

You'll most likely want to add this to the config file of whatever shell
you're using. If you'd prefer to not mess with an environment variable,
simply pass the key along as an option when you run a DADA command:

`$ dada match 514604875 --key WHATEVER_YOU_KEY_IS`

Legal
-----

Dota 2 is a registered trademark of Valve Corporation.