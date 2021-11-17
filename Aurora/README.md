# Lab.Databases > Aurora 

## Documentation

- https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html

- https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Overview.StorageReliability.html
  + "Aurora data is stored in the cluster volume, which is a single, virtual volume that uses solid state drives (SSDs).
    A cluster volume consists of copies of the data across three Availability Zones in a single AWS Region"
  + "Aurora cluster volumes automatically grow as the amount of data in your database increases. An Aurora cluster
    volume can grow to a maximum size of 128 tebibytes (TiB). "
  + "When Aurora data is removed, the space allocated for that data is freed. Examples of removing data include dropping
    or truncating a table. This automatic reduction in storage usage helps you to minimize storage charges. "

- https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Overview.Security.html
  + "Aurora DB clusters must be created in a virtual private cloud (VPC) based on the Amazon VPC service. To control
    which devices and Amazon EC2 instances can open connections to the endpoint and port of the DB instance for Aurora
    DB clusters in a VPC, you use a VPC security group."


- https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Replication.html
  + "When you create a second, third, and so on DB instance in an Aurora provisioned DB cluster, Aurora automatically
    sets up replication from the writer DB instance to all the other DB instances. These other DB instances are
    read-only and are known as Aurora Replicas. We also refer to them as reader instances when discussing the ways that
    you can combine writer and reader DB instances within a cluster. "

  + "Aurora Replicas have two main purposes. You can issue queries to them to scale the read operations for your
    application. You typically do so by connecting to the reader endpoint of the cluster. That way, Aurora can spread
    the load for read-only connections across as many Aurora Replicas as you have in the cluster. Aurora Replicas also
    help to increase availability. If the writer instance in a cluster becomes unavailable, Aurora automatically
    promotes one of the reader instances to take its place as the new writer. "

  + "An Aurora DB cluster can contain up to 15 Aurora Replicas. The Aurora Replicas can be distributed across the
    Availability Zones that a DB cluster spans within an AWS Region."

  + "all Aurora Replicas return the same data for query results with minimal replica lag. This lag is usually much less
    than 100 milliseconds after the primary instance has written an update. Replica lag varies depending on the rate of
    database change. That is, during periods where a large amount of write operations occur for the database, you might
    see an increase in replica lag. "

  + "To increase availability, you can use Aurora Replicas as failover targets. That is, if the primary instance fails,
    an Aurora Replica is promoted to the primary instance. There is a brief interruption during which read and write
    requests made to the primary instance fail with an exception, and the Aurora Replicas are rebooted."


- https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Security.html

- https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.html
  + "Use Amazon Aurora encryption to secure your DB clusters and snapshots at rest. Amazon Aurora encryption uses the
  industry standard AES-256 encryption algorithm to encrypt your data on the server that hosts your DB cluster. "
    * https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Overview.Encryption.html
      * "Amazon Aurora encrypted DB clusters use the industry standard AES-256 encryption algorithm to encrypt your data
        on the server that hosts your Amazon Aurora DB clusters. After your data is encrypted, Amazon Aurora handles
        authentication of access and decryption of your data transparently with a minimal impact on performance. You
        don't need to modify your database client applications to use encryption. "
      * "To enable encryption for a new DB cluster, choose Enable encryption on the console."
      * "When you create an encrypted DB cluster, you can choose a customer managed key or the AWS managed key for
        Amazon Aurora to encrypt your DB cluster. If you don't specify the key identifier for a customer managed key,
        Amazon Aurora uses the AWS managed key for your new DB cluster. Amazon Aurora creates an AWS managed key for
        Amazon Aurora for your AWS account. Your AWS account has a different AWS managed key for Amazon Aurora for each
        AWS Region."
      * "Once you have created an encrypted DB cluster, you can't change the KMS key used by that DB cluster. Therefore,
        be sure to determine your KMS key requirements before you create your encrypted DB cluster."
      * "In some cases, Amazon Aurora can lose access to the KMS key for a DB cluster. For example, Aurora loses access
        when RDS access to a KMS key is revoked. In these cases, the encrypted DB cluster goes into a terminal state,
        and you can only restore the DB cluster from a backup. We strongly recommend that you always enable backups for
        encrypted DB clusters to guard against the loss of encrypted data in your databases."
      * See "*Limitations of Amazon Aurora encrypted DB clusters*"


  + "Use Secure Socket Layer (SSL) or Transport Layer Security (TLS) connections with DB clusters running the Aurora
    MySQL or Aurora PostgreSQL."
      * https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL.html


- https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.AuroraHighAvailability.html


- https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.BestPractices.html
  + https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.BestPractices.html



