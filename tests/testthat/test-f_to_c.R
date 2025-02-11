library(testthat)
test_that("transformation works", {
  expect_equal(
    object = f_to_c(c(0, 32, 100)),
    expected =c(-17.7778, 0, 37.7778),
    tolerance = 1e-4
    )
})
