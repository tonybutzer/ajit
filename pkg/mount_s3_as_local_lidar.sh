
#! /bin/bash

echo this mounts a bucket to look like a real filesystem - sort of

sudo mkdir -p /lidar

sudo chown ec2-user:ec2-user /lidar
REGION=us-west-2

sudo s3fs -o allow_other -o iam_role="eccoe-developer-ec2-role" \
-o use_cache=/tmp \
-o url="https://s3-$REGION.amazonaws.com" \
-o umask=0227,uid=1000 \
-o nonempty     \
        eccoe-lidar /lidar

