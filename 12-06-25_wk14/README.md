# Class7 12-06-25 Saturday
week 13 (Terraform pt 7): S3-hosted webpage

goal = create a S3 bucket and host a custom public webpage

Deliverables = link of functional S3-hosted webpage

run this code  
- aws s3 cp s3://test-1256099743/lab-example/ ~/documents/TheoWAF/s3-lab-example/ --recursive


*look into pimpin out my terminal using Obsidian
https://youtu.be/xvW9WAvGlVk?si=OBUUnMa9TAvpWGzB 
- Sergino Obsidian is doing a $30 per month class

S3 static website hosting lab - first in console

http://120625-saturday-bucket.s3-website-us-east-1.amazonaws.com

###################################

# Terraform

### config that "is not" default:
- added a bucket policy
- disable "block all public access"
- enable statick website hosting
- uploaded objects

### Resource to create
- s3 bucket
- s3 object (upload them to the aforementioned bucket)
- public access block (we are disabling this)
- make a policy (explain jsonencode())
- statick website config

### Desired output:
- static website url
- bucket name
- arn


