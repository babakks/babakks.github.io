---
layout: post
title: "Mount S3 Bucket as a File System Directory [RE#14]"
date: 2021-12-02 19:30:00 +0330
excerpt: |
    If you ever needed to access/manipulate an S3 bucket, originally provided by AWS or just any provider with a compatible interface, there is a neat solution called s3fs, thanks to FUSE infrastructure, that simplifies things down to the level of your local file system interaction.
categories: article
author: babakks
comments: true
published: true
series: "Regular Encounters"
---

Some 18 months ago, we faced a storage-related challenge that involved migrating from standard file system storage onto a bucket provided by a S3-compatible provider. The first solution seemed to be defining an abstraction over storage mechanism and implement it for both standard file system (since we still needed it) and S3. While it was a legit solution, yet there was a better option that could spare us modifying the codebase.

## `s3fs` and FUSE

[`s3fs`][repo] is an open-source FUSE-based file system driver that simply mounts a S3 bucket content as a standard file system directory. One can just install `s3fs` on Debian-based distros via running:

[repo]: https://github.com/s3fs-fuse/s3fs-fuse

```sh
sudo apt-get install s3fs
```

To start using it, first have your ACCESS-KEY-ID and SECRET-ACCESS-KEY stored at `/etc/passwd-s3fs` with read-only permissions:

```sh
export AWSACCESSKEYID="your-aws-access-key-id"
export AWSSECRETACCESSKEY="your-aws-secret-access-key"
sudo sh -c "echo $AWSACCESSKEYID:$AWSSECRETACCESSKEY > /etc/passwd-s3fs"
sudo chmod 0640 /etc/passwd-s3fs
```

Create an empty directory to mount bucket content onto:

```sh
mkdir -p ~/my-bucket-mount-dir
```

Now invoke `s3fs` to mount bucket content:

```sh
s3fs \
    "your-bucket-name" \
    ~/my-bucket-mount-dir \
    -d \
    -o allow_other \
    -o use_path_request_style \
    -o default_acl=public-read \
    -o nonempty \
    -o direct_io \
```

⚠️ If you're using a S3-compatible interface, provide the storage server domain as an option:

```sh
-o url=https://some-storage-server-domain
```

Of course there are many options that you may want to consider when using `s3fs`. You can read its docs via running `s3fs --help` or `man s3fs`.

{% include_relative regular-encounters-footer.markdown %}
