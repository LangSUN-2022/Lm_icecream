library(tidyverse)
library(dplyr)
library(tidyr)
library(tibble)
library(ggplot2)
library(wesanderson)
library(cowplot)

df <- read.csv("./heatmap.csv")

anno_mat <- df %>%
  column_to_rownames("isolate") %>%
  t()

df_long <- df %>%
  pivot_longer(
    cols = -isolate,
    names_to = "annotation",
    values_to = "value"
  )

annotation_order <- rownames(anno_mat)
df_long$annotation <- factor(
  df_long$annotation,
  levels = (annotation_order)
)

isolate_order <- df$isolate
df_long$isolate <- factor(
  df_long$isolate,
  levels = (isolate_order)
)

###############################################
#ggplot(df_long, aes(isolate, annotation, fill = value)) +
#  geom_tile(color = "white") +
#  facet_grid(annotation ~ ., scales = "free_y", space = "free_y") +
#  scale_fill_manual(values = wes_palette("Royal1")) +
#  theme_minimal() +
#  theme(
#    axis.text.x = element_text(angle = 90, hjust = 1),
#    strip.text.y = element_blank(),
#    panel.spacing.y = unit(0.1, "lines"),
#    panel.grid = element_blank()
#  ) +
#  labs(x = NULL, y = NULL)
###############################################
#persistence_clades1
persistence_clade <- subset(df_long,df_long$annotation=="persistence_clade")
p1 <- ggplot(persistence_clade, aes(isolate, annotation, fill = value)) +
  geom_tile(color = "white") +
  scale_fill_manual(values = rev(wes_palette("Royal1"))) +
  theme_minimal() +
  theme(
    axis.text.x = element_blank(),
    strip.text.y = element_blank(),
    panel.grid = element_blank(),
    plot.margin = margin(0, 0, 0, 0),
    panel.spacing = unit(0, "pt")
  ) +
  labs(x = NULL, y = NULL)
p1
p1.1 <- p1+theme(legend.position = "none")
p1.legend <- get_legend(p1+labs(fill="Persistence_clade"))





#persistence2
persistence <- subset(df_long,df_long$annotation=="persistence")
p2 <- ggplot(persistence, aes(isolate, annotation, fill = value)) +
  geom_tile(color = "white") +
  scale_fill_manual(values = wes_palette("Royal1")) +
  theme_minimal() +
  theme(
    axis.text.x = element_blank(),
    strip.text.y = element_blank(),
    panel.grid = element_blank(),
    plot.margin = margin(0, 0, 0, 0),
    panel.spacing = unit(0, "pt")
  ) +
  labs(x = NULL, y = NULL)
p2
p2.1 <- p2+theme(legend.position = "none")
p2.legend <- get_legend(p2+labs(fill="Persistence/\nSSI_genes"))



#SSI_genes3
SSI_genes <- subset(df_long,df_long$annotation=="SSI_genes")
p3 <- ggplot(SSI_genes, aes(isolate, annotation, fill = value)) +
  geom_tile(color = "white") +
  scale_fill_manual(values = wes_palette("Royal1")) +
  theme_minimal() +
  theme(
    axis.text.x = element_blank(),
    strip.text.y = element_blank(),
    panel.grid = element_blank(),
    plot.margin = margin(0, 0, 0, 0),
    panel.spacing = unit(0, "pt")
  ) +
  labs(x = NULL, y = NULL)
p3
p3.1 <- p3+theme(legend.position = "none")



#freephage_type4
freephage_type <- subset(df_long,df_long$annotation=="phage_type")
p4 <- ggplot(freephage_type, aes(isolate, annotation, fill = value)) +
  geom_tile(color = "white") +
  scale_fill_manual(values = rev(wes_palette("Royal1", 4,type = c("continuous")))) +
  theme_minimal() +
  theme(
    axis.text.x = element_blank(),
    strip.text.y = element_blank(),
    panel.grid = element_blank(),
    plot.margin = margin(0, 0, 0, 0),
    panel.spacing = unit(0, "pt")
  ) +
  labs(x = NULL, y = NULL)
p4
p4.1 <- p4+theme(legend.position = "none")
p4.legend <- get_legend(p4+labs(fill="Phage_type"))



#plasmid_type5
plasmid_type <- subset(df_long,df_long$annotation=="plasmid_type")
p5 <- ggplot(plasmid_type, aes(isolate, annotation, fill = value)) +
  geom_tile(color = "white") +
  scale_fill_manual(values = rev(wes_palette("Royal1", 5,type = c("continuous")))) +
  theme_minimal() +
  theme(
    axis.text.x = element_blank(),
    strip.text.y = element_blank(),
    panel.grid = element_blank(),
    plot.margin = margin(0, 0, 0, 0),
    panel.spacing = unit(0, "pt")
  ) +
  labs(x = NULL, y = NULL)
p5
p5.1 <- p5+theme(legend.position = "none")
p5.legend <- get_legend(p5+labs(fill="Plasmid_type"))






#transposon_type6
transposon_type <- subset(df_long,df_long$annotation=="transposon_type")
p6 <- ggplot(transposon_type, aes(isolate, annotation, fill = value)) +
  geom_tile(color = "white") +
  scale_fill_manual(values = (wes_palette("Royal1"))) +
  theme_minimal() +
  theme(
    axis.text.x = element_blank(),
    strip.text.y = element_blank(),
    panel.grid = element_blank(),
    plot.margin = margin(0, 0, 0, 0),
    panel.spacing = unit(0, "pt")
  ) +
  labs(x = NULL, y = NULL)
p6
p6.1 <- p6+theme(legend.position = "none")
p6.legend <- get_legend(p6+labs(fill="Transposon_type"))







#st_type7
ST_type <- subset(df_long,df_long$annotation=="ST")
p7 <- ggplot(ST_type, aes(isolate, annotation, fill = value)) +
  geom_tile(color = "white") +
  scale_fill_manual(values = rev(wes_palette("Royal1", 4,type = c("continuous")))) +
  theme_minimal() +
  theme(
    axis.text.x = element_blank(),
    strip.text.y = element_blank(),
    panel.grid = element_blank(),
    plot.margin = margin(0, 0, 0, 0),
    panel.spacing = unit(0, "pt")
  ) +
  labs(x = NULL, y = NULL)
p7
p7.1 <- p7+theme(legend.position = "none")
p7.legend <- get_legend(p7+labs(fill="ST"))




#facility8
facility <- subset(df_long,df_long$annotation=="facility")
p8 <- ggplot(facility, aes(isolate, annotation, fill = value)) +
  geom_tile(color = "white") +
  scale_fill_manual(values = rev(wes_palette("Royal1"))) +
  theme_minimal() +
  theme(
    axis.text.x = element_blank(),
    strip.text.y = element_blank(),
    panel.grid = element_blank(),
    plot.margin = margin(0, 0, 0, 0),
    panel.spacing = unit(0, "pt")
  ) +
  labs(x = NULL, y = NULL)
p8
p8.1 <- p8+theme(legend.position = "none")
p8.legend <- get_legend(p8+labs(fill="Facility"))




#room9
room <- subset(df_long,df_long$annotation=="room")
p9 <- ggplot(room, aes(isolate, annotation, fill = value)) +
  geom_tile(color = "white") +
  scale_fill_manual(values = rev(wes_palette("Royal1", 4,type = c("continuous")))) +
  theme_minimal() +
  theme(
    axis.text.x = element_blank(),
    strip.text.y = element_blank(),
    panel.grid = element_blank(),
    plot.margin = margin(0, 0, 0, 0),
    panel.spacing = unit(0, "pt")
  ) +
  labs(x = NULL, y = NULL)
p9
p9.1 <- p9+theme(legend.position = "none")
p9.legend <- get_legend(p9+labs(fill="Room"))



#source10
source <- subset(df_long,df_long$annotation=="source")
p10 <- ggplot(source, aes(isolate, annotation, fill = value)) +
  geom_tile(color = "white") +
  scale_fill_manual(values = rev(wes_palette("Royal1", 6,type = c("continuous")))) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 90, hjust = 1),
    strip.text.y = element_blank(),
    panel.grid = element_blank(),
    plot.margin = margin(0, 0, 0, 0),
    panel.spacing = unit(0, "pt")
  ) +
  labs(x = NULL, y = NULL)
p10
p10.1 <- p10+theme(legend.position = "none")
p10.legend <- get_legend(p10+labs(fill="Source"))





#sample11
sample <- subset(df_long,df_long$annotation=="sample")
p11 <- ggplot(sample, aes(isolate, annotation, fill = value)) +
  geom_tile(color = "white") +
  scale_fill_manual(values = rev(wes_palette("Royal1", 13,type = c("continuous")))) +
  theme_minimal() +
  theme(
    axis.text.x = element_blank(),
    strip.text.y = element_blank(),
    panel.grid = element_blank(),
    plot.margin = margin(0, 0, 0, 0),
    panel.spacing = unit(0, "pt")
  ) +
  labs(x = NULL, y = NULL)
p11
p11.1 <- p11+theme(legend.position = "none")



p.legend <- plot_grid(p1.legend,p2.legend,p7.legend,p4.legend,
                      p5.legend,p6.legend,p8.legend,p9.legend,
                      p10.legend,
                      nrow = 1)
white_bg_theme <- theme(
  plot.background = element_rect(fill = "white", color = NA),
  panel.background = element_rect(fill = "white", color = NA)
)
p.legend <- p.legend + white_bg_theme

p.main <- plot_grid(p.legend,
                    p1.1,p2.1,p3.1,p7.1,p4.1,
                    p5.1,p6.1,p8.1,p9.1,p10.1,
                    ncol = 1,
                    align = "v",axis = "lr",
                    labels = c("A"),
                    rel_heights = c(5,1,1,1,1,1,1,1,1,1,4))
p.main


ggsave(p.main,file="heatmap.png",height = 5.1,width = 13)








