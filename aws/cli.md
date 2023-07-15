# AWS CLI version 2

## Installation

to install on macOS for all users:<br>
```BASH
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /
```

verify that the shell can find and run the aws command in your $PATH:<br>
```BASH
which aws
aws --version
```

## Configuration

configure credentials:<br>
`aws configure`
this creates the `.aws/credentials` file

## Example commands

S3:
```BASH
# sync from local dir to bucket
aws s3 sync . s3://mybucket

# sync between buckets
aws s3 sync s3://mybucket s3://mybucket2

# sync from bucket to local dir
aws s3 sync s3://mybucket .

# sync from local dir to bucket and delete files that exist in destination but not in source
aws s3 sync . s3://mybucket --delete
```
