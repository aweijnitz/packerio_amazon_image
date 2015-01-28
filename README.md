# Packer.io Scaffold

This is a project that includes all the files and scripts needed to build a basic Debian 7 image for Amazon EC2 with Oracle Java 8 on it. The provisioning adds a firewall and auto-banning of failed connections as well. Requires [packer.io](https://packer.io/) installed locally on your computer.

## Use
- Install packer.io
- Setup an Amazon AWS account (requires credit card, although it will not be charged)
- Checkout this repo
- Edit ```make.sh``` to include your access keys (see below for details)
- run ```./make.sh```

## Required access keys for Amazon EC2
*You need an Amazon AWS account to host the final image.*

In order to generate the keys needed (see [make.sh](make.sh)) do the following in Amazon Management Console.

- Go to [IAM](https://console.aws.amazon.com/iam/home#home) console
- Create a new user
- Generate keys for the new user
- Plug the keys into the script [make.sh](make.sh)
- Done!

## About the provisioning
This project uses shell script provisioning, so no need to learn chef or anything. Just basic scripting.
The scrips are executed in this order
- Preparation [prepare.sh](prepare.sh)
- Basic tools and utilities [installBasics.sh](installBasics.sh)
- Installation of Java8 [installJava8.sh](installJava8.sh)
- Installation of image domain specific applications (empty, add your stuff here) [installApplications.sh](installApplications.sh)
- Setup security (firewall etc.) [setupSecurity.sh](setupSecurity.sh)


## General notes
I also added some notes about the process [here](http://mildly-interesting.info/blog/2015/01/26/packer-dot-io-for-the-impatient/).
