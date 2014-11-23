# dev-human
[![Gitter](https://badges.gitter.im/Join Chat.svg)](https://gitter.im/dev-human/dev-human?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

**dev-human** is a collaborative blog created by developers, for developers, focused on non-technical, lightening content.
Visit the website to get more info: http://dev-human.com .

Powered by [Sculpin](http://sculpin.io).

## Contributing

If you want to contribute with articles, please read the relevant section in our website: [Contributing to dev-human](http://dev-human.com/docs/contribute/).

If you want to run the website locally to preview your post, of if you want to contribute with code and new features, check the following section on how to install Sculpin.

Build
-----

### If You Already Have Sculpin

    sculpin install
    sculpin generate --watch --server

Your newly generated clone of sculpin-blog-skeleton is now
accessible at `http://localhost:8000/`.

### If You Need Sculpin

    curl -O https://download.sculpin.io/sculpin.phar
    php sculpin.phar install
    php sculpin.phar generate --watch --server
