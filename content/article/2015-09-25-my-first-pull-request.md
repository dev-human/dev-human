---
draft: true
title: "There's always a first time: the story of my first Pull Request"
source: https://www.phparch.com/magazine/2014-2/may/
authors:
- erikaheidi
categories:
- Life and Code
tags:
- open source
- learning
---

It was just another day at the office: got my coffee, opened my PHP IDE, joined some IRC channels in case I needed help with something code-related. It was my first year in Amsterdam, my first year getting involved with the PHP community. By that time, I never had been in a PHP conference before, and the only "PHPeople" I knew in real life were from the [AmsterdamPHP](http://www.meetup.com/AmsterdamPHP/) meetup group.

I was working with [Silex](http://silex.sensiolabs.org/), a microframework based on Symfony. It's simple, small, you add the components as you need them. Gives you a great foundation, with absolute freedom - something that I much appreciate in my projects.

Everything was working great in my Silex project, until that morning. I got stuck with an upload problem (who never?), and the error message was anything but informative: _"The file 'myimage.jpg' is not valid"_. 

OK, so my image is invalid. In my conception, this means that there's something wrong with the image file, or maybe the framework is not accepting that mimetype for uploads - is there any configuration file where I had to enable it? Tried another JPG, same error. Tried a PNG, same error. Naturally, from the error message, I assumed it was not environment-related. If that was the case, the message should be clear, like _"hey, you have a permission problem in your upload folder"_, or something.

After making tests with other images, it became obvious that the problem was, indeed, environment related: small images would work just fine. Then I checked my `php.ini` and fixed the problem by increasing the upload size limit. 

It didn't took me so long to find out the problem and fix it, but only because I was experienced enough with file uploads to believe in my instincts and check the environment. The error message was confusing. It would be tough for an inexperienced programmer to discover the problem. 

## Taking Responsibility

Considering all this, I went to the #silex-php channel on IRC to report the situation - although this wasn't a critical problem, I still felt like it was my duty. It was one of the first times that I talked into the open channel. I re-wrote the sentence at least 5 times before hitting enter, because, you know: I didn't want it to sound like a complain, I just wanted to give a friendly "heads up" to help making Silex better.

After an endless moment of suspense, Igor Wiedler - one of the major Silex contributors - answered me in the channel, and his answer totally caught me by surprise: _"Can you make a PR? That would be great"_.

Took me some seconds to realize that, by _**PR**_, he meant a **Pull Request**. Because, by that time, I'd never made a Pull Request in my life; I've only heard about it. And yes, I shared code before, I had at least one open source repository on GitHub with some sort of library I wrote, but I never had contributed to someone else's open source project.

Contributing is different from simply sharing some code you wrote on a public space. It's another person's project; you have to follow its guidelines, you have to ask for permission, you have to work around something that is already there. It requires communication and teamwork. Also, with a popular project like Silex, there are more things involved: many people are already using it on production, so you have to be very careful with what you implement or change.

Things got even more interesting (not to say scary) when he told me I would have to _PR_ the **Symfony** project, since the problem was on the `HtttpFoundation` component, from Symfony. 

So, all of a sudden, I had this challenge in front of me; and I felt responsible, because I was using that project. It helped me being more productive and get things done faster. Saved my precious time, and I didn't have to pay a single dime for that. I really wanted to help, even if it was just a little contribution. At the end of the day, it seemed to be something really simple, right? Just find a way to show better error messages for file uploads.

But I was afraid. My first thought was "how can someone who never even used Symfony before, can contribute and make a pull request to such a big and important project?". I was afraid of what people would think about my code. They would judge me. What if I wasn't good enough? What if I did some stupid mistake, and they started making fun of me? And worst: what if, by doing something wrong, I ended up hurting the image of women developers? It might sound silly, but if you ever were part of an underrepresented group, you know the feeling of having all eyes over you. It's an additional layer of pressure.

## Overcoming the Fear of Failure

Today I know that those fears were not exclusively mine; many other developers, even the most experienced open source contributors, had to overcome the same fears before. The fear of ridicularization, the fear of not being good enough. Fear of failure. Today I also see that those fears come from a lack of confidence, perfectly normal for anything that you are about to do for the very first time. Regardless of the fact that I was programming for years, that situation was new for me.

Luckily, I've always been a very optimistic person - the _rational_ type, at least. Some people take it for courage, but I don't think so. It's just a certainty that we are capable of accomplishing pretty much anything we want, as long as we really dedicate ourselves to it. Despite of anything else, I was a PHP programmer, and I had the skills needed for the task. I could do it. And if I was unsure about something, I could always ask for help. That's the best thing about the PHP community, in my opinion: there are so many good people, really friendly and helpful.

With that in mind, I started coding. It should not take so long, but I was full of doubts: what is the best approach for doing this? Is this good enough for Symfony standards? How should I name this variable? And so on, and so on. No matter how simple it seems to be, these questions will always pop up, but that's a good thing: you want to do your best. And that's the moment when you can use the fear of failure in your favor - to keep you alert and conscious about what you are doing.

When I finished my code (and not before making dozens of manual tests to guarantee it was working fine), that's when I realized: coding was the easiest part of everything. Of course, it's just _programming_, what I was used to do for many years. So far, nobody had seen my code; the moment of truth has come, when I was about to actually create the Pull Request.

## The Moment of Truth

For a big project like Symfony, contributing is not as simple as creating a _PR_ to the master branch. There are rules. You need to choose the right branch. You need to **rebase** (update the codebase, because something might have changed since you started coding). You need to provide informative commit messages and answer some questions in the Pull Request, like: Is this a bugfix, or just an improvement? Are there new docs for this? Are the unit tests still passing?

The good thing is that, in a big project, the rules are usually very clear, and well documented. The bad thing is that, sometimes, it's not easy to determine whether something is a bugfix or a new feature, for instance. If you start coding in the wrong branch, you probably will need to rebase everything on the right branch afterwards, which can be messy and painful. 

As you can imagine, my first try went all wrong - I requested to merge a code based on _master_, on a versioned branch - which resulted in thousands of commits in the diff. Second try was not right either, I rebased my code but it didn't work well. Closed both (there's no way for deleting a Pull Request, unfortunately). Third try seemed to be all good - the right commits, only my changes, the diff was exactly how it should be. 

Then I started getting feedback. I got a feedback from [Fabien Potencier](https://twitter.com/fabpot) himself - the man, the legend behind Symfony. He suggested an improvement(Figure 1), and I did it. Eventually he said I would have to rebase (oh, the horror) my code and make the pull request in the master branch, since it was a new feature. 

![Figure 1: Fabien's Feedback](http://i.imgur.com/k3fYvta.png)

The **fourth** pull request was the one. I remember as if it were yesterday: in the morning of April 22, 2013, I got an email from Github saying my pull request was successfully **merged**. I made it to the list of Symfony 2 contributors. Even though my contribution was very simple, my name is there, as you can see in the page <http://symfony.com/contributors/code>. And if you ever get the exception _"The file 'somefile.ext' exceeds your upload_max_filesize ini directive"_, remember: I've put it there.

![Figure 2: PR Merged](http://i.imgur.com/W1DcFid.png)

## The Learning Continues

The learning process didn't stop when my pull request was merged; afterwards, Fabien merged a new commit with an improvement to my code, making it more concise. Again, I learned something knew, and I didn't forget.

There's one thing we need to remember about code: usually there are many ways for solving the same problem. And something we need to remember about people: they have different opinions, and you will never be able to please everyone. You need to know how to weight the feedbacks you receive - some of them might be conflicting, and then you'll have to rely in a trustable source. I relied on Igor, since he was the person who made me work on this pull request in first place. He helped me make my code better, he helped me overcome my fear of failure, and I will be forever grateful for that occasional problem I faced on Silex file uploads.

To feel more confident about anything in life, you need practice, which cannot be done without the first time. There's always a first time for everything, and it's OK if you don't get it right at first - people will understand. Don't be afraid of failure, because often that's how we learn more - when we fail. As Thomas Edison would say, I didn't fail three times: I just found out 3 ways in which that pull request would not work at all. 

Contributing to open source projects is wonderful. You have the opportunity to give back to the community, working on projects that helped you being more productive, and saved you a lot of time. And you get free code reviews! How in the world I would imagine to get a free code review from Fabien Potencier? Imagine how cool is that. Not to mention that you also gain visibility; and nowadays, your GitHub profile is so or more important than your LinkedIn. It's like your portfolio.

There are many ways to contribute, it doesn't even need to be with code. You can work in the documentation, for instance - something that is usually underestimated, but has a huge importance for any project. Find a project you like, with friendly people - it's always a good idea to have a conversation with some of the project contributors, before doing anything. You can also ask you friends about some cool projects you could contribute to. There are lots of them, I can assure you.

And don't forget: there's nothing wrong in telling that you are doing it for the first time. There's nothing wrong in asking for help, when you feel unsure about something. After all, you are **contributing**. Any help in an open source project is important. Whether if it's code, documentation, or a simple favicon. 
