test_that("recode system_size works", {
    test_data <- structure(list(system_size = c("small", "large"), time = c(NA,
                                                                            0), n = c(NA, 500L), mean = c(80, NA), plus_sd = c(84.4721359549996,
                                                                                                                               NA), minus_sd = c(75.5278640450004, NA)), class = c("tbl_df",
                                                                                                                                                                                   "tbl", "data.frame"), row.names = c(NA, -2L))

    expect_equal(sort(recode_sys_size(test_data)$system_size),
                 c("A. 1000 total sites", "B. 100 total sites")
    )
})
