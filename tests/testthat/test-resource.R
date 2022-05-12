test_that("AWS S3 resource builder works", {
  res <- newResource(
    name = "NA06985.final.csv",
    url = "s3://1000genomes/1000G_2504_high_coverage/data/ERR3239276/NA06985.final.csv",
    format = "csv"
  )
  expect_equal(res$name, "NA06985.final.csv")
  expect_equal(res$url, "s3://1000genomes/1000G_2504_high_coverage/data/ERR3239276/NA06985.final.csv")
  expect_null(res$identity)
  expect_null(res$secret)
  expect_equal(res$format, "csv")
  expect_equal(class(res), "resource")
  #client <- resourcer::newResourceClient(res)
  #expect_true("FileResourceClient" %in%  class(client))
  #expect_true("TidyFileResourceClient" %in%  class(client))
  #client$close()
})

test_that("Minio resource builder works", {
  res <- newResource(
    name = "CNSIM3",
    url = "s3+http://localhost:9000/cnsim/CNSIM3.csv",
    identity = "minio",
    secret = "minio123",
    format = "csv"
  )
  expect_equal(res$name, "CNSIM3")
  expect_equal(res$url, "s3+http://localhost:9000/cnsim/CNSIM3.csv")
  expect_equal(res$identity, "minio")
  expect_equal(res$secret, "minio123")
  expect_equal(res$format, "csv")
  expect_equal(class(res), "resource")
  #client <- resourcer::newResourceClient(res)
  #expect_true("FileResourceClient" %in%  class(client))
  #expect_true("TidyFileResourceClient" %in%  class(client))
  #client$asDataFrame()
  #client$close()
})

test_that("Spark Minio resource builder works", {
  res <- newResource(
    name = "CNSIM3",
    url = "s3+spark+http://127.0.0.1:9000/stejustine/patient_delta?read=delta",
    #url = "s3+spark+http://localhost:9000/stejustine/patient_delta?read=delta",
    #url = "s3+spark+https://minio-test.obiba.org/stejustine/patient",
    identity = "minio",
    secret = "minio123"
  )
  expect_equal(res$name, "CNSIM3")
  expect_equal(res$url, "s3+spark+http://127.0.0.1:9000/stejustine/patient_delta?read=delta")
  expect_equal(res$identity, "minio")
  expect_equal(res$secret, "minio123")
  expect_equal(class(res), "resource")
  #client <- resourcer::newResourceClient(res)
  #expect_true("SQLResourceClient" %in%  class(client))
  #client$asDataFrame()
  #client$asTbl()
  #client$close()
})
