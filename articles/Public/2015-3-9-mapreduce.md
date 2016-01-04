title: MapReduce
date: 2015-03-03 14:44:00
categories: Big Data
---

A MapReduce job usually splits the input data-set into independent chunks which are processed by the map tasks in a completely parallel manner.

The MapReduce framework operates exclusively on <key, value> pairs, that is, the framework views the input to the job as a set of <key, value> pairs and produces a set of <key, value> pairs as the output of the job, conceivably of different types.

# Basic Concepts in Hadoop:
[http://wiki.apache.org/hadoop/ImportantConcepts]
* Hadoop:
Hadoop itself refers to the overall system that runs jobs, distributes tasks (pieces of these jobs) and stores data in a parallel and distributed fashion.

* Map/reduce:
http://wiki.apache.org/hadoop/HadoopMapReduce
Is the style in which most programs running on Hadoop are written. In this style, input is broken in tiny pieces which are processed independently (the map part). The results of these independent processes are then collated into groups and processed as groups (the reduce part). Follow the link for a much more complete description.

* HDFS - stands for Hadoop Distributed File System. This is how input and output files of Hadoop programs are normally stored. The major advantage of HDFS are that it provides very high input and output speeds. This is critical for good performance for highly parallel programs since as the number of processors involved in working on a problem increases, the overall demand for input data increases as does the overall rate that output is produced. HDFS provides very high bandwidth by storing chunks of files scattered throughout the Hadoop cluster. By clever choice of where individual tasks are run and because files are stored in multiple places, tasks are placed near their input data and output data is largely stored where it is created. An HDFS cluster is built from a NameNode and one or more DataNode instances.i
