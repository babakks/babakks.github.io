---
layout: post
title: "On Ugly Face of Hardcoded Values [RE#5]"
date: 2021-08-14 00:00:00 +0330
excerpt: |
    Hard coded values are tiny, wicked creatures. They wait, sometimes for years, to spot the right moment and bring you down.
categories: article
author: babakks
comments: true
published: true
image: "/img/regular-encounters.png"
series: "Regular Encounters"
---

Recently I've been working on a service maintenance/migration problem and needed to change a few configuration parameters (names of several RabbitMQ queues/exchanges.)

Things were going smooth until when I found there's no way to nicely apply such changes on tge production, because some developer, at some point hardcoded the names into the code base. She either decided these parameters are never going to change or to parameterizing them contributes to unnecessary complexity–I hope the former was the case. 🤦

Besides taking the precious time of fellow developers and waste their focus/energy, hardcoding ties your hands in emergency/disaster recovery. You never know what's going to be happen in the next incident. The moral of the story, don't leave hardcoded values as your heritage. 

{% include_relative regular-encounters-footer.markdown %}
