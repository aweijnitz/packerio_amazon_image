# Packer.io image scaffold

This is a project that includes all the files and scripts needed to build a basic Debian 7 image for Amazon EC2 and installs Oracle Java 8 on it. Adds firewall and auto-banning of failed connections as well. Requires [packer.io](https://packer.io/) installed locally on your computer.

*Note: You need and Amazon AWS account to host the final image.*

In order to generate the keys needed (see [make.sh](make.sh)) do the following in Amazon Management Console.

- Go to [IAM](https://console.aws.amazon.com/iam/home#home) console
- Create a new user
- Generate keys for the new user
- Plug the keys into the script [make.sh](make.sh)
- Done!

I also added some notes about the process [here](http://mildly-interesting.info/blog/2015/01/26/packer-dot-io-for-the-impatient/).
