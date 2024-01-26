---
layout: post
title: "Optimize Postgres Containers for Testing [RE#15]"
date: 2024-01-26 00:00:00 +0000
excerpt: |
    If you're using Postgres containers for testing, you might already be annoyed by the performance, specially if you have a lot of tests that need to communicate with a real database. Here are some small tips to get a good performance.
categories: article
author: babakks
comments: true
published: true
image: "/img/regular-encounters.png"
series: "Regular Encounters"
---

Recently, I had this task of transferring our tests from using in-memory SQLite instances to Postgres containers. It seemed a like a pretty straightforward set of changes, until I realized it's not. I had to fix some random unexpected issues down the road. But the biggest (and to be fair, the most expected) one was the poor performance of the tests after fully migrating to Postgres.

Long story short, after some Internet search and reading documentations, I ended up getting a good performance (very close to what we had with SQLite) using the `docker-compose.yaml` configuration below: 

```yaml
services:
  postgres:
    image: postgres
    restart: always
    ports:
      - 5432:5432
    # Remove the `tmpfs` key below, either:
    #   - If you don't want to lose the data after the container stops/restarts.
    #   - If the data can be too large for the memory.
    tmpfs:
      - /var/lib/postgresql/data
    # Since it's mainly used for testing purposes, it's okay to set fsync=off for
    # improved performance.
    command: -c fsync=off -c full_page_writes=off
```

The key points here are:

- **Using `tmpfs`**: With [`tmpfs` mounts][tmpfs], you can utilize memory (RAM) as the underlying filesystem storage for specific paths. Here I've used it to store Postgres data. This, of course, means there's no real persistence in-place, therefore you will lose the data if the container stops/restarts. Also, you have to be careful with the size of the data, in case it could get close to your memory limits.

[tmpfs]: https://docs.docker.com/storage/tmpfs

- **Applying `-c fsync=off -c full_page_writes=off`**: If you don't disable the [`fsync` option][fsync], Postgres makes sure that updates are physically written to disk, which could be a great performance hit. As of official documentations, if you turn `fsync` off, you should also consider disabling `full_page_writes`.

[fsync]: https://www.postgresql.org/docs/current/runtime-config-wal.html

{% include_relative regular-encounters-footer.markdown %}
