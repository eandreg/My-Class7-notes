class 7 (11-01-25 part 2) change the region to Paris therefore modifying existing code, changing values, names
week 8 (Terraform pt 3) catch up, SG, and EC2

goal = modify existing code to build my vpc in a different region

*******************************

VPC (Paris) = 10.109.0.0/16
                 eu-west-3

Public A = 10.109.1.0/24
Public B = 10.109.2.0/24
Public C = 10.109.3.0/24
Public D = 10.109.4.0/24

Private A = 10.109.11.0/24
Private B = 10.109.12.0/24
Private C = 10.109.13.0/24
Private D = 10.109.14.0/24

********************************

quick notes:

IVPAD
    terraform init
    terraform validate
    terraform plan
    terraform apply
    terraform destroy

Push to my repository
    echo "# My-Class7-notes" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/DennistonShaw/My-Class7-notes.git
git push -u origin main