Steps for implementation:
1. Deploy a VPC and subnet
2. Deploy an internet gateway and associate it with VPC
3. Setup route table with route to internet gateway (IGW)
4. Deploy EC2 instance inside of created subnet.
5. Associate public IP and a security group that allows public ingress