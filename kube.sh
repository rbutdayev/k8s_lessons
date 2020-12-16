kops create cluster \
  --cloud aws \
  --dns public \
  --dns-zone ${ROUTE53_ZONE} \
  --topology private \
  --networking weave \
  --associate-public-ip=false \
  --encrypt-etcd-storage \
  --network-cidr 10.2.0.0/16 \
  --image ${AMI_ID} \
  --kubernetes-version 1.10.11 \
  --master-size t2.medium \
  --master-count 3 \
  --master-zones us-east-1a,us-east-1b,us-east-1d \
  --master-volume-size 64 \
  --zones us-east-1a,us-east-1b,us-east-1d \
  --node-size t2.large \
  --node-count 3 \
  --node-volume-size 128 \
  --ssh-access 10.0.0.0/16 \
  ${CLUSTER_NAME}
