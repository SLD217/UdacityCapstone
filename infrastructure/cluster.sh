

eksctl create cluster -f cluster.yaml --profile=CapstoneEKSUser

##--parameters file://ekscluster.json

##--aws cloudformation create-stack --stack-name EKSCluster1 --template-body file://ekscluster.yml --region=eu-west-1 --capabilities CAPABILITY_NAMED_IAM

##--eksctl create cluster --name=captest1 --region=eu-west-1 --nodes-max=4 --nodes-min=1 --node-type=t2.small --profile=CapstoneEKSUser