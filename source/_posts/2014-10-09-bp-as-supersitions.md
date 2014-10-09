---
title: Best practises as superstitions
authors:
    - meadsteve
date: "2014-10-09"
categories:
    - Life and Code
tags:
    - best practises
    - magic
    - coding
use:
    - posts_tags
    - posts_categories
---

### Starting Point

Superstitions seem natural for humans (disclaimer: this may be a superstition).
For a human starting out thousands of years ago, avoiding the cursed river was probably a good idea.
People swimming in this river often disappeared without trace.
This particular river may have, in fact, been full of crocodiles. Very well hidden crocodiles. Well maybe it wasn't.
Better safe than sorry (for a better more well founded explanation see here: [New Scientist: Superstitions evolved to help us survive](http://www.newscientist.com/article/dn14694-superstitions-evolved-to-help-us-survive.html)).


### What does this have to do with development?

Recently I've been wondering if it may in fact be healthy to treat development best practises as superstitions.
If you've just been told they are the best way to do something and not why isn't this a lot like a magic spell?
Do this thing and your code will be better. Offer a sacrifice to the code gnomes.
This doesn't mean they don't work most of the time. It doesn't mean they are always harmful.
Though some may in fact be. And relying on many of them blindly almost certainly is.

A good example came up in a [talk on refactoring](https://joind.in/11802) I attended at the weekend.
The speaker was discussing various refactoring techniques and in one example he created a new class. Moved some code out of a giant ball of code into the class.
Then he used a ```global```. At this point I readied my pitch fork. Globals, as we all know, are a bad thing and he should be punished.
Luckily I managed to resist. He then went on to make a very good point: this refactoring step was simple and discrete and it *had* made the code *better*.
The next step he listed then removed this global and used dependency injection. But even if this second step didn't get performed the code was still in a better
state than when he'd started.

So maybe every time you use global you don't get eaten by a grue.
Does using classes always make your code better? Or for that matter does using classes instantly mean you are using OO?
Maybe every time you use a GOTO you don't get attacked by a raptor.
I'm not so sure about this later one because [obligatory xkcd](http://xkcd.com/292/) but I did meet [igorw](https://github.com/igorw/retry/blob/master/src/retry.php) at the weekend and he seemed okay.

### The message to take away

What I want to cultivate is a mindfulness of when I'm doing something because it's the ```right thing to do```&trade;
instead of the best thing to do to solve the problem I'm currently working on.
I'm certainly not going to stop following best practises. They've generally been found/created by people smarter than me.
They can save me a lot of future pain. They can help me structure my solutions in a better way.
But that's no excuse to blindly follow them.
Especially if that prevents me getting the very thing I desired from following best practises: well written code.