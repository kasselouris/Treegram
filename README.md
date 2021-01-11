# Treegram

A simple ruby on rails web app. Allows a user to create an account with username, password, and avatar. After login user can upload photos to their account, follow other users and add comments to pictures.

Installation and Usage
------------
Run Postgres Server

Clone or download this repository and cd into indent directory

```
$ rake db:create
$ rake db:migrate
$ rails server
```

In your browser visit localhost:3000


Treegram Tutorial
-----------------
- **Hover mouse** over a users picture for a slideshow presentation all its pictures

<img src="https://github.com/kasselouris/Treegram/blob/main/assets/slideshow.gif" />

- **Click** a picture to show a pop up window with its latest comments and a text-box area to add a new comment or **Right Click** a picture in order to delete it and all its comments

<img src="https://github.com/kasselouris/Treegram/blob/main/assets/comments_and_delete.gif" />

> For more pictures and gifs about Treegram check the [assets folder.](https://github.com/kasselouris/Treegram/tree/main/assets)

Version
-------

- ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-linux]
- Rails 5.2.1


License
-------

MIT license
