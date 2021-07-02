---
layout: post
title: "Feature Flag Are Necessary [RE#1]"
date: 2021-06-02 14:00:00 +0330
excerpt: |
    Feature flags are of those little creatures that could bring a huge benefit to your side. 
categories: article
author: babakks
comments: true
published: true
---

Simply put, *Feature Flag* (FF) is a parameter that enables/disables specific features in your application. As a real-world example, a service could have a feature to cache some data to avoid making unnecessary database calls. Here, a feature flag, in its simplest form, can be a static configuration parameter, say `cache.isEnabled`, of boolean type. You can learn more about FF and types of it on Martin Fowler's invaluable [blog post][fowler-ff].

What I want to put a stress on is that FF is not a fancy thing or something you would hold up like a future plan. As soon as you deploy a new feature on your production environment, you'll need to have them ready. This gets even more crucial when you've deployed several features over time and all of a sudden, during an emergency or as a business call, you'd want to disable one of them; that cannot be neatly done by just reverting some deployment and not losing other features.

[fowler-ff]: https://martinfowler.com/articles/feature-toggles.html

{% include_relative regular-encounters-footer.markdown %}
