library(ggplot2)

theme_dm <- function() {
  theme(text = element_text(colour = "#bababa"),
        plot.background = element_rect(fill = "#222222"),
        panel.background = element_rect(fill = "#222222"),
        panel.grid.minor = element_blank(),
        panel.grid.major.x = element_line(colour = "#2d2d2d"),
        panel.grid.major.y = element_line(colour = "#595959"),
        axis.text = element_text(size = 11, colour = "#707070"),
        axis.title = element_text(colour = "#828282"),
        axis.line = element_blank(),
        axis.ticks = element_blank(),
        legend.text = element_text(size = 11, colour = "#707070"),
        legend.position = "bottom",
        legend.title = element_blank(),
        legend.background = element_rect(fill = "#222222"),
        legend.key = element_rect(fill = "#222222"))
}


ggplot(iris, aes(Sepal.Length, Sepal.Width, colour = Species)) +
  geom_point() +
  labs(title = "This is the title",
       subtitle = "This is the subtitle") +
  theme(text = element_text(colour = "#bababa"),
        plot.background = element_rect(fill = "#222222"),
        panel.background = element_rect(fill = "#222222"),
        panel.grid.minor = element_blank(),
        panel.grid.major.x = element_line(colour = "#2d2d2d"),
        panel.grid.major.y = element_line(colour = "#595959"),
        axis.text = element_text(size = 11, colour = "#707070"),
        axis.title = element_text(colour = "#828282"),
        axis.line = element_blank(),
        axis.ticks = element_blank(),
        legend.text = element_text(size = 11, colour = "#707070"),
        legend.position = "bottom",
        legend.title = element_blank(),
        legend.background = element_rect(fill = "#222222"),
        legend.key = element_rect(fill = "#222222"))
