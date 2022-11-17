# Deploy a complete infrastructure with terraform


  * Write a module to create an ec2 instance using the latest version of ubuntu bionic (which will attach the ebs and public ip)
  (which will attach the ebs and the public ip) whose size and tag will be variabilized
  * Write a module to create an ebs volume whose size will be variabilized
  * Write a module for a public ip (which will attach the security group)
  * Write a module to create a security that will open 80 and 443
  * Create an app folder that will use the 4 modules to deploy an ec2, of course you will override the variables
  variables to make your application more dynamic
  * At the end of the deployment, install nginx and save the public ip in a file named ip_ec2.txt (these elements are to be integrated in the
  elements are to be integrated in the role ec2)
  
## Steps to follow
This short tutorial explains step by step how to implement the  project

### Prerequisites

- Have **terraform**, on your workstation to provision the lab locally.
- To launch the creation of our app go to the app directory and type the command:
		- `terraform init`
	**![](https://lh5.googleusercontent.com/E0uJFijQjoB8EiDbAG9N5C_vlWtFHdjIvEJevPYvW6L4xqYlLZdyQBvYeBhzI1G296K0c_ktZMwmNWzCGarjCsuQu7DIEAByC9PSTE69s_hARuA2zLfn3eR3-3uBBFjuz9Sc_E5b_JBuqCoWCW33KR1IU-5Amjljhn5XFkg4q-vyQ99SBWJoeGqYeW9B1g)**
	
		- `terraform plan
		
	**![](https://lh5.googleusercontent.com/PxpssQyGOxjzDyHlAnsWs2Y-WkN54hIfp89zsnbzthvz4i4rNk8BfSeWODmIiDbasH1xcshPvl0XX5FI-f6zAxo7DgodjoMKi_OEPueuUg-ENgAeWaTmrSx9jiwoTWUAWrDjC4wNwzAR0YZkRs710u7I8wF3v3IcDxGKeN0YfivwyeqGKea45-G2wwqkCQ)**
	
		- `terraform apply`
		
**![](https://lh4.googleusercontent.com/DdgGp__iNBtN3yqX490XXMxw_hxRqPVuT-7n1tnTua8SwNaDBXH9ygKftqJDCAAfOGV7RBeqq6MeJEE762eVsHfOlYxc-Sn8Bzdk7OkaaNRFIZ0XInkGGDVKGyiigQ6bDcM_QDgYf6ISPqrV5YxDFj9OLcOZTcucpHB1KVpfrTybtrDxea_cxDhA-Ox_4Q)**

**![](https://lh3.googleusercontent.com/PWEre8SX0OuG6ondklyQbyT_QtiCT9_MgapQfRpMw0Xnb23zMl4JCJ0LUZkoiQVBp9In2Bbu6a3j5G-ECdUofr6PXBW-fKPSw6yE_A6RLn2lHdFy_w4mWy_Wuldwp3qZB2RBA61Z3_58XCRTxwV71dXOEXwWLHW4doQOupHCzl12BUB02nc6ih_BbjWgxw)**
**![](https://lh3.googleusercontent.com/fj-B2AkaloDLv1yjlEb42i3Sy68cwkavDiJ-cfNU1MCChycNz2t3sAfxTHwxxlSCKF2Y1D8t6NEeYaQ52O17ZYcZRA42y98Rv0utXPoKFrfm7mwxwtSRdSwua4t-g8Kz2FCPMTxK_Oi3wSxUvOmS_nh0B-0DAwDmNpA5z-TVOeXchq-3llv345F1xR7ofg)**
**![](https://lh4.googleusercontent.com/YtSEXEre7EpGbpEjevzO7zT2HJP_EhEn5BWixCmyur8NKiEHxF4LPf7ZmQN44-zTiP0wU1FG8WQhC8xl-0NAI38lVDYvDZsYSVuhTzaoVIPTiVVzciBNojuYIgg34qVXNHeNYDEfsxFIsZxl63dE9bUNH2sR1egiTu6rbjadckJsGI9IwIYIn2yRzY3uRA)**

###  Test

- content of the ip address file: ip_ec2.txt

**![](https://lh6.googleusercontent.com/mTyZYLF4d-xNtqUTOyO1ZTe1BNzDNEck8qlAC-ju9oo7Dk1RCZ4NF_9Mci2EpdKE01-vQdK7VdJjy2vmippSR93Wa2d7rUTGMHhsAeKOep92YP4WTxp3LfBvVxAdiIy42wzneUNoOLIvQ0K74sklVkGT1b3DOOCz6SdmyLwsLQM3_DKPgPmm5HmZErJOIg)**

- Open the browser with public ip to test deployment of our nginx

**![](https://lh4.googleusercontent.com/klRsBGuo50dEK7kjo_fW4PpxGrqBZd3GlPazig_k6RR-0yB6GQyKJvrXv5EEO4VUj78NDVMQ4GRFDojYlgWuEksSehrxZg6vmElVtL2miOdqtMS_hZjUbvueg9wQxcVGtKlUumynV9Ep8NGDZcFSibCMfYwQXjlx2Rg59NqaDHES2LoZ-aSSd7kloV2WhA)**

- Creation instance

**![](https://lh4.googleusercontent.com/7AjUBYl6OGI6eAUOSbEwxvc5NnLRp-myBPnaXzTIAgGboX8KVXfhz0fV3OcQSu3MWlGmWbMHEQci0IYmQLTNHLBSgYsd9ei6CS2VWqaiAfVSA1pSfLjs2T0mhcGkDdez2ivpf-3YhvDYh-meHEYnQTMNo0H9qqAjLh6Y1RbuDjWnHmfR3FSpuw-nlZ7tJg)**

- Creation aurelie security group

**![](https://lh4.googleusercontent.com/PvKxQ_8a-bGdlGXhd_o7gzqtbbOst2BmZ3Y4G9sAd3cOVZCT1BBQqwCvCBw0HObUKZfm7KBzHAYADEkMVvk9HRN1P18GC0cpDSBTe_IZUlA0diVxI3fl_bw9Z6lyM6CncrmwIuTkOqb4A84q5SMNYLfq9T3rl0gGmF-4qQyXJzX0E-boh-S_RSSwJkoxWQ)**

- Elastic ip

**![](https://lh3.googleusercontent.com/LjgEUEehIJZXENNXcw8MmoCQsa6CGln_0kI4EScKn_7cs4khR8mWkVAjsLa8R_Cm8Ndz30ig9K_k7Gvx61LZBDECvKtMtrtnFjNeiwVtSf8UkrlrWYsQ7MbBZFpRxhvPhzYL2AwHA2N9ENHXCTQg9W1xzqsWccBf_yH-ATh6framk7XqcPy4_IO0HdJedA)**

