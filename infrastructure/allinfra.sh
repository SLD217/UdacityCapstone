# This script call the 2 seperate scripts and create 3 cloudformation stack which create the EKS infra and accounts
# This uses eksctl but the resulting templates are also available in the alt_infra sub folder

./cluster.sh
./iam.sh

