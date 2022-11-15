context("test-colours")

test_that("nerd_colour returns expected values", {
  expect_equal(nerd_colors("chocolate"), c("#32302f"))
  expect_equal(nerd_colors("white"), c("#ebdbb2"))
  expect_equal(nerd_colors("violet-red"), c("#b16286"))
})

test_that("nerd_colors returns the correct length", {
  expect_equal(length(nerd_colors("nord-snow-storm-30", "nord-aurora-10")), 2)
  expect_equal(length(nerd_colors("cadet-blue")), 1)
})

test_that("nerd_colors gives warning if color is not found", {
  expect_warning(nerd_colors("blahblah"))
  expect_warning(nerd_colors("up", "down"))
})

test_that("nerd_pal returns a function", {
  expect_is(nerd_pal("main"), "function")
})

test_that("nerd_pal errors on unknown palette", {
  expect_error(nerd_pal("does not exist"), "Palette not found")
})
