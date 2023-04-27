# Always Free Cloud Resources

This repo contains __only always free__ resources from various public clouds. Contributions welcome!

Inspired by [cloudcommunity/Cloud-Free-Tier-Comparison](https://github.com/cloudcommunity/Cloud-Free-Tier-Comparison)

__WARNING__ I do not guarantee for any correctness of this list.
It might be outdated (though I will try my best to keep it updated).
It might also happen, that you charged for additional cost like traffic, etc.

All constraints (e.g. traffic) are tied to a period of one month.

## List by Resource

|Resource     |Cloud   |Product Name                     |Info|
|-------------|--------|---------------------------------|----|
|Database     |Alibaba |PolarDB                          |50GB SQL|
|             |AWS     |DynamoDB                         |25GB NoSQL|
|             |Azure   |Cosmos DB                        |25GB NoSQL|
|             |IBM     |Cloudant                         |1GB NoSQL|
|             |IBM     |Db2                              |0,2GB SQL|
|             |Oracle  |Autonomous JSON Database         |20GB SQL|
|             |Oracle  |Autonomous Transaction Processing|20GB SQL|
|             |Oracle  |NoSQL Database                   |25GB NoSQL|
|             |render  |PostgreSQL                       |1GB SQL|
|             |render  |Redis                            |1GB NoSQL|
|S3           |AWS     |Glacier                          |10GB|
|             |GCP     |Cloud Storage                    |5GB only USA, region: us-west-1 OR us-central1 OR us-east-1, 1GB external traffic to every region except China or Australia, incomming traffic free|
|             |IBM     |Object Storage                   |25GB|
|             |Oracle  |Archive Storage                  |10GB|
|             |Oracle  |Object Storage                   |10GB|
|             |Oracle  |Object Storage - Infrequet Access|10GB|
|             |Scaleway|Object Storage                   |75GB, 75GB external traffic, incomming traffic free|
|Serverless   |Alibaba |Function Compute                 |1 Million Requests|
|             |AWS     |Lambda                           |1 Million Requests|
|             |Azure   |Container Apps                   |2 Million Requests|
|             |Azure   |Functions                        |1 Million Requests|
|             |GCP     |Cloud Functions                  |2 Million Requests, 5GB external traffic to every region except Australia, incomming traffic free|
|             |GCP     |Cloud Run                        |2 Million Requests, 1GB external traffic to every region, incomming traffic free|
|VM           |GCP     |Compute Engine                   |e2-micro, provisioning model: regular, boot disk type: Standard persistent disk, region: us-west-1 OR us-central1 OR us-east-1, boot disk size: 30GB, 1GB external traffic to every region except China or Australia, incomming traffic free|
|             |Oracle  |Compute                          |2 VMs with 1/8 OCPU and 1GB of memory each - 1OCPU = 2vCPUs -> 2x (0,25vCPU, 1GB RAM), 200GB Storage total|
|             |Oracle  |Compute (ARM)                    |ARM VM(s) with 4vCPUs, 24GB RAM, 200GB Storage total -> e.g. 4vCPUs, 24GB RAM, 200GB Storage OR 2x (2vCPUs, 12GB, 100GB Storage)|

## List by Cloud

|Cloud   |Resource     |Product Name                     |Info|
|--------|-------------|---------------------------------|----|
|Alibaba |Database     |PolarDB                          |50GB SQL|
|        |Serverless   |Function Compute                 |1 Million Requests|
|AWS     |Database     |DynamoDB                         |25GB NoSQL|
|        |S3           |Glacier                          |10GB|
|        |Serverless   |Lambda                           |1 Million Requests|
|Azure   |Database     |Cosmos DB                        |25GB NoSQL|
|        |Serverless   |Container Apps                   |2 Million Requests|
|        |Serverless   |Functions                        |1 Million Requests|
|GCP     |S3           |Cloud Storage                    |5GB only USA, region: us-west-1 OR us-central1 OR us-east-1, 1GB external traffic to every region except China or Australia, incomming traffic free|
|        |Serverless   |Cloud Functions                  |2 Million Requests, 5GB external traffic to every region except Australia, incomming traffic free|
|        |Serverless   |Cloud Run                        |2 Million Requests, 1GB external traffic to every region, incomming traffic free|
|        |VM           |Compute Engine                   |e2-micro (provisioning model: regular, boot disk type: Standard persistent disk, region: us-west-1 OR us-central1 OR us-east-1, boot disk size: 30GB, 1GB external traffic to every region except China or Australia, incomming traffic free|
|IBM     |Database     |Cloudant                         |1GB NoSQL|
|        |Database     |Db2                              |0,2GB SQL|
|        |S3           |Object Storage                   |25GB|
|Oracle  |VM           |Compute                          |2 VMs with 1/8 OCPU and 1GB of memory each - 1OCPU = 2vCPUs -> 2x (0,25vCPU, 1GB RAM), 200GB Storage total|
|        |VM           |Compute (ARM)                    |ARM VM(s) with 4vCPUs, 24GB RAM, 200GB Storage total -> e.g. 4vCPUs, 24GB RAM, 200GB Storage OR 2x (2vCPUs, 12GB, 100GB Storage)|
|        |S3           |Archive Storage                  |10GB|
|        |S3           |Object Storage                   |10GB|
|        |S3           |Object Storage - Infrequet Access|10GB|
|        |Database     |Autonomous JSON Database         |20GB SQL|
|        |Database     |Autonomous Transaction Processing|20GB SQL|
|        |Database     |NoSQL Database                   |25GB NoSQL|
|render  |Database     |PostgreSQL                       |1GB SQL|
|        |Database     |Redis                            |1GB NoSQL|
|Scaleway|S3           |Object Storage                   |75GB, 75GB external traffic, incomming traffic free|

## Additional Guides

You'll also find some [hints](trial_to_paid.md) for gaining and _keeping_ the access to those resources (e.g. by migrating your "trial" account to a paid one).

And if that's not enough, you might also find one or another [example](example_uses) on how to use those free resources efficiently and maybe tie them together.
