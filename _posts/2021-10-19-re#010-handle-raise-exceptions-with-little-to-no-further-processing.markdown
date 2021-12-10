---
layout: post
title: "Handle/Raise Exceptions with Little to No Further Processing [RE#10]"
date: 2021-10-19 16:30:00 +0330
excerpt: |
    When handling exceptions, or raising them, we are prone to forgetting a perpetual danger.
categories: article
author: babakks
comments: true
published: true
image: "/img/regular-encounters.png"
series: "Regular Encounters"
---

Exceptions  may occur anywhere, even inside a `catch` (or `except` in Python) block. It's not a wrong presumption that people expect them less in there. Anyway, beware of the code you put in these blocks because when an exception occurs you just don't want to make things worse.

One safe approach to prevent faulty codes in those blocks is to ensure that you are not doing any further processing or data manipulation there. In other words, if you're re-raising the exception (or logging something) try to use raw data.

For instance, look at this listing:

```js
class Student {
  getCourses() {
    // Query student courses from repository
  }
  makeStudentIdentifier() {
    return `${this.lastname.trim()} ${this.firstname.trim()} (#${this.studentNo.trim()})`;
  }

  doSomeProcess() {
    try {
      const courses = this.getCourses();
    }
    catch (e) {
      console.log("Process failed for %s: %s", this.makeStudentIdentifier(), e);
    }
  }
}
```

What if, due to some bug somewhere else, `Student.studentNo` assigned with a `number` value instead of a `string`. Calling `trim()` on a `number` object causes another exception, terminating the handling you had in mind (here, logging) and returning the control to the first `catch` block up on the call stack. Not to mention that the original exception, which should be the actual issue to investigate, got masked and you may easily miss it; though somewhere in the middle of the stack trace will be a faint hint to that. So, it's safer to appreciate raw values and do things with less processing:

```js
console.log("Process failed for %s %s (%s): %s", this.lastname, this.firstname, this.studentNo, e);
```

{% include_relative regular-encounters-footer.markdown %}
