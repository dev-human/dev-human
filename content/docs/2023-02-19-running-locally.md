---
title: Running dev-human on your local machine
---

If you want to run the project in your local machine - in order to preview how your article will look like in the website,
or to contribute with improvements to the website - you'll need Docker installed. In addition, Make can be useful to simplify
running things.

## Clone the Repository

First, clone the repository to your local machine:

```bash
> git clone https://github.com/dev-human/dev-human
```

#### Run a local server through Make commands

The project comes with a Makefile that you can use of you don't want to remember the individual commands required.
If you only run `> make` you will get an overview of the available commands. The quickest way to get started is to run 

```bash
> make start
```

Dev-Human website will then be accessible at [http://localhost:1313/]() (a browser window should open automatically).

#### Run a local server with shell commands

Changes to the template files can require tailwindcss to run in order to see them. Start tailwind so that it can watch 
and respond to any changes (_this step is not required if you're writing a new article_): 

```bash
> dev/node npx tailwindcss \
    -i ./assets/css/input.css \
    -o ./assets/css/index.css \ 
    --jit \
    --watch
```

Changes to the content folders need to be detected by Hugo. Hugo has a built-in webserver that is accessible locally 
and immediately rebuilds the content while you write. It's blindingly fast, and automatically refreshes the browser.
No need to install it locally, you can run it through Docker:

```bash
> docker-compose up -d hugo
```

Dev-Human website will then be accessible at `http://localhost:1313/`.