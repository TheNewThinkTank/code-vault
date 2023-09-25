# EC2 overview

## Pricing Options

`DORS`
- Dedicated (most expensive)
- On-Demand (pay by the hour or second)
- Reserved (reserve for 1-3 years. up to 72% discount)
- Spot (purchase unused capacity. up to 90 % discount)

## Instance Types

- R: RAM
- C: CPU
- M: "medium", balanced
- I: I/O
- G: GPU
- T2/T3: burstable

[Instance overview](https://www.ec2instances.info)

## Related Services

- ASG
- ELB
- EBS
- EFS

# Relevant Knowledge

- SSH (e.g. `ssh ec2-user@<IP> -i <rsa-key.pem>`)
- User Data / bootstrapping

## Metadata

Data about the EC2 instance. Inspect:<br>
`curl http://<IP>/latest/meta-data/`
