context("ln")

test_that("Returns the natural logarithm of values in a raster", {

  dem <- system.file("extdata", "DEM.tif", package = "whitebox")
  ret <- ln(input = dem, output = "output.tif")
  expect_match( ret, "Elapsed Time" )

})
