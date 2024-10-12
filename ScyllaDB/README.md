
# ScyllaDB Resources

## References 

- https://www.scylladb.com/
  + https://docs.scylladb.com/stable/
  + https://developers.scylladb.com/stable/
  + https://cloud.docs.scylladb.com/stable/



- https://github.com/scylladb/
  + https://github.com/scylladb/scylladb
    * License:  AGPL-3.0 license 
    * "Scylla embraces a shared-nothing approach that increases throughput and storage capacity to realize order-of-magnitude performance improvements and reduce hardware costs."
    * https://github.com/scylladb/scylladb/blob/master/docs/dev/README.md


- https://en.wikipedia.org/wiki/ScyllaDB
  + "ScyllaDB is an open-source distributed NoSQL wide-column data store. It was designed to be compatible with Apache Cassandra while achieving significantly higher throughputs and lower latencies. It supports the same protocols as Cassandra (CQL and Thrift) and the same file formats (SSTable), but is a completely rewritten implementation, using the C++20 language replacing Cassandra's Java, and the Seastar[1] asynchronous programming library replacing classic Linux programming techniques such as threads, shared memory and mapped files. In addition to implementing Cassandra's protocols, ScyllaDB also implements the Amazon DynamoDB API.[2]"
  + "ScyllaDB uses a sharded design on each node, meaning that each CPU core handles a different subset of data. Cores do not share data, but rather communicate explicitly when they need to. The ScyllaDB authors claim that this design allows ScyllaDB to achieve much better performance on modern NUMA SMP machines, and to scale very well with the number of cores."
  + "A 2017 benchmark from Samsung observed the 10x speedup on high-end machines – the Samsung benchmark reported that ScyllaDB outperformed Cassandra on a cluster of 24-core machines by a margin of 10–37x depending on the YCSB workload.[6]"


## Books

- [ScyllaDB in Action](https://www.manning.com/books/scylladb-in-action)
  + Manning, September 2024
  + "ScyllaDB is a versatile NoSQL database that can move large volumes of data fast. Very, very, very fast. This drop-in replacement for Cassandra takes full advantage of modern multi-core hardware and scales to handle large real-time data workloads with incredibly low latency. It features built-in monitoring and management tools, and its efficient use of computing resources can save a lot of money on high-volume applications."
  + "ScyllaDB in Action demonstrates how to integrate ScyllaDB into data-intensive applications. You’ll work through a hands-on project step by step as you use ScyllaDB to store data and learn to configure, monitor, and safely operate a distributed database. Along the way, you’ll discover how ScyllaDB’s unique “shard per core” approach helps you deliver impressive performance in real-time systems."
