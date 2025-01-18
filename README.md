# S3 Resource R

[![Build Status](https://travis-ci.com/obiba/s3.resourcer.svg?branch=master)](https://app.travis-ci.com/github/obiba/s3.resourcer)
[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/s3.resourcer)](https://cran.r-project.org/package=s3.resourcer)

The `s3.resourcer` package is for accessing a file stored in the AWS S3 system or in a HTTP S3 compatible object store such as [minio](https://min.io/). It makes use of the [aws.s3](https://github.com/cloudyr/aws.s3) R package and of [sparklyr](https://spark.posit.co/) when the S3 file store is accessed through Apache Spark.

### S3 File Getter

The resource is a file which location is described by a URL with scheme `s3` (Amazon Web Services S3 file store) or `s3+http` or `s3+https` (Minio implementation of the S3 API over HTTP). To authenticate, the AWS/HTTP S3 key is the resource's identity and the AWS/HTTP S3 secret is the resource's secret.

For instance this is a valid resource object that can be accessed by the `S3FileResourceGetter`:

```
library(s3.resourcer)
res <- resourcer::newResource(url="s3://my_bucket/mtcars.Rdata", format = "data.frame")
client <- resourcer::newResourceClient(res)
client$asDataFrame()
```

or

```
library(s3.resourcer)
res <- resourcer::newResource(url="s3+https://minio.example.org/test/mtcars.Rdata", format = "data.frame")
client <- resourcer::newResourceClient(res)
client$asDataFrame()
```

### S3 Spark Connector

The resource is a [Parquet](https://parquet.apache.org/) file which location is described by a URL with scheme `s3+spark` (Amazon Web Services S3 file store) or `s3+spark+http` or `s3+spark+https` (Minio implementation of the S3 API over HTTP). The dataset will not be download as a file: instead of that Apache Spark will be used to access the resource, with the help of sparklyr. To authenticate, the AWS/HTTP S3 key is the resource's identity and the AWS/HTTP S3 secret is the resource's secret.


For instance this is a valid resource object that can be accessed by the `S3SparkDBIConnector`:

```
library(s3.resourcer)
res <- resourcer::newResource(url="s3+spark://my_bucket/mtcars")
client <- resourcer::newResourceClient(res)
client$asTbl()
```

or

```
library(s3.resourcer)
res <- resourcer::newResource(url="s3+spark+https://minio.example.org/test/mtcars")
client <- resourcer::newResourceClient(res)
client$asTbl()
```

or for a Parquet file inside a [Delta Lake](https://delta.io/), the query parameter `read` can be used 

```
library(s3.resourcer)
res <- resourcer::newResource(url="s3+spark+https://minio.example.org/test/mtcars?read=delta")
client <- resourcer::newResourceClient(res)
client$asTbl()
```

#### Spark installation

A local installation of Spark is expected. If not found, Spark will be installed using the following code:

```
library(sparklyr)
spark_install(version="3.2.1", hadoop_version = "3.2")
jars <- c("https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.3.1/hadoop-aws-3.3.1.jar",
          "https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.11.901/aws-java-sdk-bundle-1.11.901.jar",
          "https://repo1.maven.org/maven2/io/delta/delta-core_2.12/1.1.0/delta-core_2.12-1.1.0.jar")
lapply(jars, function(jar) {
  httr::GET(jar, write_disk(file.path(spark_home_dir(), "jars", basename(jar)), overwrite = TRUE))
})
```

You can adjust this to your needs.
