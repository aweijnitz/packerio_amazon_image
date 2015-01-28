# Packer.io image scaffold

Builds a basic Debian 7 image for Amazon EC2 and installs Oracle Java
8.

You need and Amazon AWS account to host the final image.

In order to generate the keys needed (see [make.sh](make.sh)) do the following in Amazon Management Console.

- Go to [IAM](https://console.aws.amazon.com/iam/home#home) console
- Create a new user
- Generate keys for the new user
- Plug the keys into the script [make.sh](make.sh)
- Done!

