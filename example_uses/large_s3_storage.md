# Large S3 Stoarge

Since you can have multiple S3's at different Clouds, there must be a way to combine them, right?
Yes, there is. Currently you can get up to 145GB of storage for free! But of course, this is hacky. And not very resillient. But you came here for the possibility, right?
Let's get started.

## Theoretical setup

You need the following software components:

- [rclone](https://github.com/rclone/rclone)
- [mergefs](https://github.com/trapexit/mergerfs)

In order to use all the S3 buckets, they are going to me mounted as a file-system to your device.
This is done via rclone. First, you need to add all endpoints/buckets to rclone. I will not desribe here
how you can do this. Please search for a guide that fits your needs.

Once that's done, you'll have to mount the endpoints as file-systems.
Create empty folders for each endpoint/bucket somewhere you can remember it, e.g.

```sh
$ pwd .
/home/tux
$ tree .
'-- s3endpoints
    |-- AWS
    |-- GCP
    |-- IBM
    |-- ORACLE1
    |-- ORACLE2
    |-- ORACLE3
    '-- SCALEWAY
```

Now mount each endpoint/bucket:

```sh
rclone mount aws_endpoint:my_bucket s3endpoints/AWS --vfs-cache-mode writes
```

Depending on your needs, you might need to tweak some settings here (e.g. to improve performance). Look for a guide somewhere on the internet, that can explain this way better than I can.

Now merge these mounts into one logical:

```sh
folders = $(for folder in $(echo /home/tux/endpoints/*); do echo -n "${i}:" done | sed 's/\:$*//g')
mergerfs -o cache.files=off,dropcacheonclose=true,category.create=mfs "${folders}" /path/to/hacky/storage
```

Voila! You should now have a folder which can hold the combined capacity of all S3 buckets.

No gurantee that this will work though. Feel free to share your experience or improve!
