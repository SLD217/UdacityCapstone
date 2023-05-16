aws cloudformation create-stack --stack-name EKSCluster1 --template-body file://ekscluster.yml --region=eu-west-1 --capabilities CAPABILITY_NAMED_IAM

##--parameters file://ekscluster.json