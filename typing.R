library(ggplot2)
library(dplyr)
library(RColorBrewer)
library(cowplot)

data <-  read.csv("./typing results.csv")


# Summarize the count of isolates for each CT, grouped by Lineage and CC
df_summary <- data %>%
  group_by(area,source, facility) %>%
  summarise(count = n()) %>%
  ungroup()

df_summary$area <- factor(df_summary$area,levels = c("preparing","filling","packaging","product"))

# Create the bar plot
p1 = ggplot(df_summary, aes(x = area, y = count, fill = source)) +
  geom_bar(stat = "identity",color="black") +
  geom_text(aes(label = count), vjust = 0.5, size = 3, position = position_stack(vjust = 0.5),color="white") +
  scale_fill_brewer(palette="Set2") +
  facet_grid(. ~ facility, scales = "free_x", space = "free_x", switch = "x") +  # Facet by Lineage and CC
  labs(y = "Number of Isolates", fill = "Source") +
  theme_bw() +
  theme(
    strip.text = element_text(size = 10),
    axis.text.x = element_text(angle = 45, hjust = 1),
    axis.title.x = element_blank()
  )
p1

# Summarize the count of isolates for each CT, grouped by Lineage and CC
df_summary <- data %>%
  group_by(phylogenetic_lineage, clonal_complex, sequence_type,cgmlst_type, date, facility) %>%
  summarise(count = n()) %>%
  ungroup()


# Create the bar plot
p2 = ggplot(df_summary, aes(x = date, y = count, fill = sequence_type)) +
  geom_bar(stat = "identity",color="black") +
  geom_text(aes(label = cgmlst_type), vjust = 0.5, size = 3, position = position_stack(vjust = 0.5),color="white") +
  scale_fill_brewer(palette="Dark2",
                    breaks = c("ST8", "ST59", "ST5"),
                    labels = c(
                      "ST8 (Lineage II 1/2a)",
                      "ST59 (Lineage I 1/2b)",
                      "ST5 (Lineage I 1/2b)"
                    )) +
  facet_grid(. ~ facility, scales = "free_x", space = "free_x", switch = "x") +  # Facet by Lineage and CC
  labs(y = "Number of Isolates", fill = "Sequence type") +
  theme_classic() +
  theme(
    strip.text = element_text(size = 10),
    axis.text.x = element_text(angle = 45, hjust = 1),
    axis.title.x = element_blank()
  )
p2

ggsave(p2,file="./p2.png",height = 5,width = 7)

#p <- plot_grid(p1,p2,labels = c("A","B"),ncol = 1)
#ggsave(p,file="./p.png",height = 9,width = 8)


