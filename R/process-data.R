#' Recode system size variable
#'
#' @param data data.frame containing Gillespie data
#'
#' @return data.frame with system_size recoded
#' @export
#' @importFrom dplyr %>%
recode_sys_size <- function(data){
    data <- data %>%
        dplyr::mutate(system_size = dplyr::recode(system_size,
                                                  large = "A. 1000 total sites",
                                                  small = "B. 100 total sites"))
}
