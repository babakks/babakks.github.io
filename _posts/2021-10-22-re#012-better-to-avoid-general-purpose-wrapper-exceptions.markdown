---
layout: post
title: "Better to Avoid General-Purpose Wrapper Exceptions [RE#12]"
date: 2021-10-22 18:00:00 +0330
excerpt: |
    You may face a situation where defining wrapper exceptions seems like a clean approach toward encapsulation. Usually that is not the case and you'd better of without these creatures.
categories: article
author: babakks
comments: true
published: true
series: "Regular Encounters"
---

If you've ever faced such temptation to wrap inner exceptions within some neatly-defined exception type, you'd better off fight the devil. Let exceptions be themselves and freely fly high the call stack. 💸

To elaborate on the issue, consider the hypothetical `DataProcessor` and the general purpose exception type `DataProcessingFailure` below:

```ts
class DataProcessingFailure extends Exception {
  ctor(public innerException: Exception) {}
}

class DataProcessor {
  process() {
    try {
      // Some processing
    } catch (Exception ex) {
      throw DataProcessingFailure(ex) 
    } 
  } 
} 
```

Here, the `process()` method only raises a `DataProcessingFailure` exception, if any. Whatever exception occurs (e.g., `DivisionByZero`) the caller of `process()` just catches a `DataProcessingFailure` instance. So, `DataProcessingFailure` is a *wrapper exception*.

The reason behind advising against wrapper exceptions is the change of behavior that you exert on the downstream system seen by higher level controllers. For instance, you could mask a well-defined exception that itself is an intricate part of the domain model. Another example is when your wrapper could mask network related exceptions, most of which resolve just by retrying, albeit if some caller at higher level of call stack could catch them as they are.

Putting it all together, you'd logically prefer minimizing footprints/side-effects of various components/implementations on each other, so that you could avoid unwanted couplings/special-treatments.

{% include_relative regular-encounters-footer.markdown %}
