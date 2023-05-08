#############
### LABEL ###
#############
project = "homework"
stage   = "prod"

#####################
### VPC VARIABLES ###
#####################
cidr             = "172.16.0.0/16"
public_subnets   = ["172.16.0.0/24", "172.16.1.0/24"]
private_subnets  = ["172.16.2.0/24", "172.16.3.0/24"]
database_subnets = ["172.16.4.0/24", "172.16.5.0/24"]

#####################
### RDS VARIABLES ###
#####################

mysql_version              = "8.0.27"
mysql_family               = "mysql8.0"
mysql_major_engine_version = "8.0"
instance_class             = "db.t3.small"
allocated_storage          = 40
max_allocated_storage      = 40
storage_encrypted          = false
storage_type               = "gp2"
username                   = "mysql_admin"
multi_az                   = false
maintenance_window         = "Sun:00:00-Sun:03:00"
backup_window              = "03:00-06:00"
backup_retention_period    = 7
skip_final_snapshot        = false
deletion_protection        = false
