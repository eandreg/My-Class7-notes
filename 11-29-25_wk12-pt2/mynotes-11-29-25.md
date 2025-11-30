Class7 11-29-25 Saturday
Terraform pt7 S3 remote state, and SNS

goal = host the state file within an S3 bucket, and receive SNS notifications for scaling events

Deliverables = screenshots for remote state and SNS email notification


Why a remote state file? 
1. State file is a record of infrastructure that you've built 
2. Don't touch it.
3. is a record of truth

Terraform state file is located on a local machine so others don't have access to it. but you don't want to have this file where other people have access to it. We solve this by putting it in S3 bucket. People can get to it.

step 1 go to counsole and creat an S3 bucket
    - bucket s3 doesn't matter where you create the bucket but need to specify the region where you create it in the console
    - we don't want to create the following terraform code into  folder where we have already run terraform init, which is why we olnly place the first 3 .tf files in a new folder
    - [https://developer.hashicorp.com/terraform/language/backend/s3)](https://developer.hashicorp.com/terraform/language/backend/s3) terraform code to place in new auth.tf


topic
subscription
notification

