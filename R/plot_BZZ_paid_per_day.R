#' Plot BZZ paid per day
#'
#' Function to plot a graph of BZZ paid to node operators per day.
#'
#' @param storage_per_day Dataframe of certain structure, with columns for Date, BZZDistributedPerDay
#'
#' @returns Returns a plot of BZZ paid out per day.
#' @import ggplot2
#' @import ggthemes
#' @import ggprism
#'
#' @export
plot_BZZ_paid_per_day <- function (storage_per_day) {
  p <- ggplot(data = storage_per_day, aes(x = Date, y = BZZDistributedPerDay)) +
    geom_line(color = "#00AFBB") +
    theme_economist(
      base_size = 10,
      base_family = "sans",
      horizontal = TRUE,
      dkpanel = FALSE
    ) +
    xlim(Sys.Date(), Sys.Date() + 150)

  return(p)
}



