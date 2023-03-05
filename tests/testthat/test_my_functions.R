
library(testthat)

#Script to test ----------------------
source("../../R/my_functions.R")

#Tests -------------------------------
testthat::test_that("add function",{
    expect_equal(my_add(1,2),3)
    expect_equal(my_add(10,2),12)
})

testthat::test_that("sub function",{
    expect_equal(my_sub(1,2), -1)
    expect_equal(my_sub(10,2), 8)
})

testthat::test_that("sub function 2",{
    expect_equal(my_sub(100,2), 98)
    expect_equal(my_sub(10.1,2), 8.1)
})

# as this is not a package run
# testthat::test_dir("tests/testhat") from the project root folder