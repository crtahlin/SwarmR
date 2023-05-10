#' Plot storage bought per day
#'
#' Function to plot a graph of storage paid for per day.
#'
#' @param storage_per_day Dataframe of certain structure, with columns for Date, BoughtStorageInTB
#'
#' @returns Returns a plot of storage bought per day.
#' @import ggplot2
#' @import ggthemes
#' @import ggprism
#'
#' @export
plot_storage_per_day <- function (storage_per_day) {
  p <- ggplot(data = storage_per_day, aes(x = Date, y = BoughtStorageInTB)) +
    geom_line(color = "#00AFBB") +
    theme_economist(
      base_size = 10,
      base_family = "sans",
      horizontal = TRUE,
      dkpanel = FALSE
    ) +
    xlim(Sys.Date(), Sys.Date() + 150) +
    # theme_df +
    # scale_y_continuous(guide = "prism_minor", minor_breaks = seq(0, 65, 1)) +
    # ggtitle("Swarm network - Storage space paid for in Terabytes") +
    ylab("Rented in TB") +
    xlab("Months in 2023")

  return(p)
}

