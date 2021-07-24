# Treegram

A simple ruby on rails web app.

Allows a user to create an account with username, password, and avatar. After login user can upload photos to their account, follow other users and add comments to pictures.

------------
Installation and Usage
------------
You need to install:
* [Ruby 2.5.1](https://www.ruby-lang.org/en/)
* [Rails 4.2.1](https://guides.rubyonrails.org/v4.2/)
* [Bundler 1.16.1](https://bundler.io/)
* [RubyGems 2.7.7](https://rubygems.org/)
* [sqlite](https://www.sqlite.org/download.html)

Then in ```root``` folder run:  
```
bundle install
```  
and then to start the server run  
```
rails -s
```

Finally, in your browser visit [localhost:3000](http://localhost:3000/)

Run with Docker
------------
Alternative you can skip the hustle of installing and building dependencies using Docker. All you need is [Docker](https://docs.docker.com/get-docker/) installed on your device.  

Then all you have to do is:
* In *root* folder just type ```docker-compose up -d``` and open [localhost:3000](http://localhost:3000). 
> If you want to close the containers just type ```docker-compose down```.

-----------------
Treegram Tutorial
-----------------
- **Hover mouse** over a users picture for a slideshow presentation all its pictures

<img src="https://github.com/kasselouris/Treegram/blob/main/assets/slideshow.gif" />

- **Click** a picture to show a pop up window with its latest comments and a text-box area to add a new comment
- **Right Click** a picture in order to delete it and all its comments *(possible for your pictures only)*

<img src="https://github.com/kasselouris/Treegram/blob/main/assets/comments_and_delete.gif" />

> For more pictures and gifs about Treegram check the [assets folder.](https://github.com/kasselouris/Treegram/tree/main/assets)

-------
License
-------

MIT license
