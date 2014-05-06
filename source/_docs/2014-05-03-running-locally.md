---
title: Running dev-human in your local machine
nav: contribute
use:
    - posts_tags
    - posts_categories
---

If you want to run the project in your local machine - in order to preview how your article will look like in the website,
or to contribute with improvements to the website - you'll need just PHP and Sculpin installed.

### Clone the Repository

    git clone https://github.com/dev-human/dev-human

### Install Sculpin (if you don't have it yet installed)

    curl -O https://download.sculpin.io/sculpin.phar
    php sculpin.phar install
    php sculpin.phar generate --watch --server

### Run the Sculpin server

    sculpin install
    sculpin generate --watch --server

Dev-Human website will then be accessible at `http://localhost:8000/`.

