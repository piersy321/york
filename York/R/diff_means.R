library(dplyr)

diff_means <- function(data, mean.of, control) {
  variable <- enquo(mean.of)
  group <- enquo(control)

  group_bool <- data %>%
    pull(!!group) %>%
    na.omit() %>%
    unique() %>%
    length()
  if (!group_bool == 2) {
    stop("control is not boolean")
  }

  treatment <- data %>%
    filter(!!group == TRUE) %>%
    pull(!!variable)
  control <- data %>%
    filter(!!group == FALSE) %>%
    pull(!!variable)


  treat_mean <- treatment %>%
    mean()
  control_mean <- control %>%
    mean()

  diff <- treat_mean - control_mean
  t_test <- t.test(treatment, control)

  data.frame(treatment = treat_mean,
             control = control_mean,
             diff = diff,
             std_err = t_test$stderr,
             lower_conf = t_test$conf.int[1],
             upper_conf = t_test$conf.int[2])
}
