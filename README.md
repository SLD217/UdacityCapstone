
# Udacity Capstone Project Overview

In this project you will apply the skills and knowledge which were developed throughout the Cloud DevOps Nanodegree program. These include:

*  Working in AWS
*  Using Jenkins or Circle CI to implement Continuous Integration and Continuous Deployment
*  Building pipelines
*  Working with Ansible and CloudFormation to deploy clusters
*  Building Kubernetes clusters
*  Building Docker containers in pipelines

As a capstone project, the directions are rather more open-ended than they were in the previous projects in the program. You will also be able to make some of your own choices in this capstone, for the type of deployment you implement, which services you will use, and the nature of the application you develop.

You will develop a CI/CD pipeline for micro services applications with either blue/green deployment or rolling deployment. You will also develop your Continuous Integration steps as you see fit, but must at least include typographical checking (aka “linting”). To make your project stand out, you may also choose to implement other checks such as security scanning, performance testing, integration testing, etc.!

Once you have completed your Continuous Integration you will set up Continuous Deployment, which will include:

* Pushing the built Docker container(s) to the Docker repository (you can use AWS ECR, create your own custom Registry within your cluster, or another 3rd party Docker repository) ; and
* Deploying these Docker container(s) to a small Kubernetes cluster. For your Kubernetes cluster you can either use AWS Kubernetes as a Service, or build your own Kubernetes cluster. To deploy your Kubernetes cluster, use either Ansible or Cloudformation. Preferably, run these from within Jenkins or Circle CI as an independent pipeline.

----

## Steps in Completing Your Project
Before you start coding for the Android app, we strongly recommend you take a quick look at this [rubric](https://review.udacity.com/#!/rubrics/5068/view), against which the Mentor will review your submission. Your submission must satisfy all rubric criteria to pass the project; otherwise, the Mentor may ask you to re-submit.

The rubric has several criteria in the following categories:

* Set Up Pipeline
* Build Docker Container
* Deployment

You must pay attention to the detail mentioned in the specification against each criterion. A good practice would be to review the rubric after each major development step and finally at the end of the development.

### Propose and Scope the Project

I will be using CircleCi for the continuous integration phase
I plan to use rolling deployment approacj for the application
I will be using the "Hello World, my name is ..." application which consists of 2 simple html pages and an image
I have used cloud9 as the IDE
I Have also made use of eksctl in conjunction with cloudformation to build the infrastructure
My images can be found in [Dockerhub](https://hub.docker.com/r/mccowna/helloworld/tags)

### Creating you own setup

If you want to create you own version of this you can simply create the Cluser by running the script.  These utilise the eksctl tool with a config yml file to create the EKS enviroment
    
    ./infrastructure/allinfra.sh
    
and then setup kubernetes by running the script which creates a namespace, deploymentt and services required.  The URL can be found from the external-ip of the service on port 8000.

    ./deploy/alleks.sh

    [Application URL](http://a4de25aaf64ab48b9b1a8e372538268b-1325423513.eu-west-1.elb.amazonaws.com:8000/index.html)
    
You'll also need to add docker creditals to you CircleCI enviroment

### for the submission there are a number of images required

Images can be sound in the image file of the repo 

1.  lint_fail - unsuccessful linting of the dockerfile
2.  lint_pass - successful linting of the dockerfile
3.  circleci_pass - successful deployment
4.  Rolling Update - modified images running on the EKS cluster nodes
5.  kubectl - kubectl command output showing that the deployment is successful, pods are running, and the service can be accessed via an external IP or port forwarding
6.  Application - Screenshot showing that you can access the application after deployment



