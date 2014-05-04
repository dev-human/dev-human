---
layout: default
title: Contributing
nav: contribute
use:
    - posts_tags
    - posts_categories
---
# Contributing to dev-human

**dev-human** uses [Sculpin](https://sculpin.io/), a static website generator created by [Beau Simensen](https://twitter.com/beausimensen) using [Silex](http://silex.sensiolabs.org/).
But you don't need to worry about any of this: the only thing you need in order to contribute with an article for **dev-human** is a [GitHub](https://github.com/) account.

The articles are written in **markdown**. You just need to create a new file in the project tree, following some simple rules, and make a pull request to submit your content.
You don't even need to clone the repository in your local machine - all can be done through the GitHub interface.

If you want to preview your article in the exact way it's going to be published on the website, than you'll need to
have PHP and Sculpin installed in your local machine. Check our main repository for instructions: [https://github.com/dev-human/dev-human](https://github.com/dev-human/dev-human) .

## Topics

There are a large variety of topics that would be great to have in _dev-human_.
This list is just to give you a base, a general idea of what we are looking for.

Your personal opinions about:

* how Internet "affects" us
* productivity
* dealing with cognitive bias
* how to feel more fulfilled in life
* ways to be a better developer
* ways to be a better person

Again, this is just a very basic starting point. There are many other subjects we could discuss here.
Feel free to suggest more topics. The most important thing is to target the content to the public you know so well: developers. geeks. tech people. you.
This just means that you know who is listening will probably enjoy some tech jokes and allegories, eventually some meme gifs and cat content :P

## Detailed Instructions

### 1. Fork the project to your GH account

Head to our main repository on GitHub: [https://github.com/dev-human/dev-human](https://github.com/dev-human/dev-human).
Click on the "Fork" button and follow the instructions.

### 2. Navigate to the "_posts" folder, in your forked repo

Go to your forked repository. Navigate to the folder `source/_posts`. You'll see a small plus sign icon that you can use to create a new file in this folder:

![Add a file](/media/contributing/gh_create_new_file.png)

Click on this button and a new page will show up where you can define the file name and edit its contents. Now you'll need to follow some basic guidelines in order to create your article.

### 3. Set the File Name and Article Meta Data

First of all, the file name must specify the **date**, followed by a name that will be used as the article _slug_.
So, let's take for example the initial article, "Hello Humans".

The file name is `2014-05-03-hello-humans.md` . This will set the article date for May 03, 2014, and the URL for the
article - it will be `http://dev-human.com/blog/2014/05/03/hello-humans` .

Now, you need to provide some information, like the article title and your author handle. Use this as a template:

~~~~
---
title: Hello Humans!
author: erikaheidi
categories:
    - News
tags:
    - release
    - participation
use:
    - posts_tags
    - posts_categories
---

Your article content goes here. Do wathever you want with markdown.

~~~~

* **title**: The Article title
* **author** : Your author _handle_. This will be used to identify you as author, when you add yourself to the **authors list**.
* **categories** : Post categories. Its preferred that you use 1 to 3 categories.
* **tags**: Post tags. Use as many as you feel like.

Note the **use** part. These are global variables that we need in our template, to show the whole list of categories and tags.
It should be provided as-is, with no changes. We will work on a fix so you won't need to do this every time you write a new post.

Now **commit** the changes to save the file in your forked repository. When you open it again, GitHub wil automatically detect the markdown
extension and provide a pretty neat markdown editor so you can write and preview your article.

### 4. Edit the file and write your article

No go to your recently created file, and click on the "Edit" button. You can now edit your file and use the _preview_ functionality to see how it looks like.

![Edit the file](/media/contributing/gh-editmd.png)

If you need some help with markdown, have a look at this very useful [markdown syntax guide](http://daringfireball.net/projects/markdown/syntax).

### 5. Add your info to "authors" (optional)

Edit the file `app/sculpin_site.hml` in your forked repository. This configuration file has the list with all authors.
This step is not mandatory, but it will add at the end of the post a nice box with information about the article author, **YOU**.
You just need to add an item to the array, using the same author handle you used for the article meta data.

It should look similar to this:

~~~~
  erikaheidi:
      name: Erika Heidi
      url: http://erikaheidi.com
      avatar: https://pbs.twimg.com/profile_images/451042845206380545/0GHPdHhs.jpeg
      twitter: http://twitter.com/erikaheidi
      bio: independent web developer && open source enthusiast.
~~~~

Naturally, you only need to do this step once.

### 6. Pull Request

When you are done, open a pull request to **dev-human/dev-human**.

