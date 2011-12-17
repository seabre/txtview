#txtview

Super simple web app to display text files delivered by URL.

aka

A web app that abuses HTTP GET in a pretty terrible way.

#Why?

This was written to fulfill a need to allow imports of E-Mails as RSS feeds into [Tiki-Toki](http://www.tiki-toki.com/). Tiki-Toki will only show up to a certain amount of the `<description>` tag contents, but it will allow you to point to a URL to show whatever you want in it's entirety. This app exploits that.

I've also never used Sinatra before. Since this idea was way too small to want to implement with Rails, I thought this was a good opportunity to get to play with it. 
