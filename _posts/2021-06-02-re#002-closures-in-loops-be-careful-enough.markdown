---
layout: post
title: "Closures in Loops; Be Careful Enough [RE#2]"
date: 2021-06-02 14:05:00 +0330
excerpt: |
    How scope variables are bound to closures could sometimes seems a little
    tricky; however it's us humans that overlook some vital points.
categories: article
author: babakks
comments: true
published: true
image: "/img/regular-encounters.png"
series: "Regular Encounters"
---

Closures could sometimes be tricky to the point that you may find out things too late/costly.

Look at this code fragment:

```js
let a = [1, 2, 3];
let fn = [];
for (x of a) fn.push(() => x);
for (f of fn) console.log(f());
```

Simply, we've added three functions to `fn` that each should return their corresponding value of list `a`. So, we expect to see this as output:

```
0
1
2
```

But it's not what's going to happen. If you run the code you'll end up seeing this absurd thing:

```
3
3
3
```

Now, you can guess what has happened. The variable `x` is not even evaluated at the time of running the first loop. This is actually the correct behaviour, since we just declared a function that maybe called later, but certainly not now. The three functions are all ready to read the content of `x` whenever they've been called, and at that time `x` was ended up being `3`.

This is quite common to have such setup in which you're using the *loop's variable* inside an anonymous function. To make sure you don't fall in, pass the value of the loop variable to your function. That is:

```js
let a = [1, 2, 3];
let fn = [];
for (x of a)
  fn.push(
    (function (v) {
      return () => v;
    })(x)
  );
for (f of fn) console.log(f());
```

Here, I've used both syntaxes of anonymous function definitions to make things clean/separate. I'm sure you got the point, but in case you're interested to know more, have a look on these great posts:

- [Understanding JavaScript Closures in For-loops](https://decembersoft.com/posts/understanding-javascript-closures-in-for-loops/)
- [Practicing Loops and Closures](https://medium.com/@ryansperzel/practicing-loops-and-closures-7487bed8c7e3)


{% include_relative regular-encounters-footer.markdown %}
