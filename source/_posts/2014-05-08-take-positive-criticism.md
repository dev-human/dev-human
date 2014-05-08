---
title: Taking all criticism in a positive light
authors:
    - meadsteve
date: "2014-05-08"
categories:
    - Life and Code
tags:
    - code reviews
    - staying positive
    - criticism
use:
    - posts_tags
    - posts_categories
---

This post started out with me thinking about constructive criticism and how this affects developers.
The area I want to focus on specifically is code reviews and how they can be made more positive.
Most constructive criticism advice focuses on how to leave more effective feedback.
I feel it's also immensely helpful to be able to take as much as possible from any criticism.

#### Problem
Early on in my development life my workflow went something like this:

 1. Create flawless code that's a beauty to look at and is wonderfully self documenting.
 1. Pass the above code to a code review process with much fanfare.
 1. All the reviewers turn out to be trolls and mercilessly attack my code.
 1. I get defensive. Fight to justify my code and keep everything unchanged.

Now the result of this process is that the final step makes me sad and frustrated. I generally don't want to be sad.
So I wanted to identify what was wrong with the above process and improve  my life (and hopefully my code).

#### Potential Causes
Maybe the problem is with step 2? So if I stop participating in code reviews I'll be a happier person?
Whilst this solution might give me the illusion of happiness. I won't learn anything from my fellows and I run the risk of letting through some errors.

So what about step 3? Are all of my co-workers (or open-source contributors) negative trolls?
It seems unlikely that I'm a special hero and only everyone else is a troll so we'll skip this for the moment.

So finally maybe the problem is with step 4. Should I get so defensive?
Is my defensiveness actually caused by a mistaken assumption in point 1 (and a little bit 3). This seems like a good place to start.

#### Solutions
So now whenever I receive some comments on a code review I try to follow this thought process:

 * Is it a simple mistake in my code?
 If it is then I can fix it.
 Thank the reviewer and celebrate that my code is now better.
 This is the simplest situation.

 * Has reviewer has mistaken the intention of my code?
 If they have then this is possibly an issue with the way my code has been presented.
 Are there any comments I could add to clarify my intent?
 Is there any supporting documentation I could update?
 Once I've asked myself these questions I'll discuss the possible solutions with the reviewer.

 * If neither of the above has resulted in a conclusion then it's possible the issue is a large one.
 Maybe there are some issues with the entire approach I've taken.
 Maybe I've made a large number of small errors that hide my intentions.
 When this happens ideally I would like to talk to the reviewer face to face. Or on IRC, google hangout, IM etc.
 The important thing is to communicate in a manner that allows rapid back and forth (the ideal really is face to face).
 I've found without this kind of high fidelity conversation it's very easy for both sides to be misunderstood and for pointless arguments to ensue.
 Hopefully after this a conclusion will be reached that can be summarised on the code review.
 It's possible the result is abandoning the review and doing a rewrite.
 At the time this may seems like a bad thing but if it results in better quality, more robust code then you'll thank yourself later.
 This last situation is less stressful the smaller your unit of work. Less to throw away.

 * There is a small chance that after doing all the above you are left with some negative comments.
 If this is the case you may well genuinely be dealing with a troll (although think very carefully and revisit the previous steps before coming to this conclusion).
 In which case take some nursery rhyme advice: "Sticks and stones may break my bones. But comments on the internet will never hurt me".

#### Conclusion

Since following the above I feel like I've gained a lot more from the code review process.
Now I'm not perfect, I still miss the point, I still get a bit frustrated and so on.
However I've found that if I keep coming back to the points above I can extract something useful from almost all comments.
This means my code improves, I learn new techniques and I generally get better at explaining myself.
There are probably some points from this that apply to leaving more constructive criticism on a code review but that's a topic for another day.
