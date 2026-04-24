library(ggplot2)

##################figure 1
mge_table <- data.frame(
  mge = c("transposon", "phage", "plasmid"),
  number_of_MGE = c(38, 237, 96),
  percentage_of_MGE = c(66.67, 100, 92.98)
)

mge_colors <- c(
  transposon = "#b4c540",
  phage = "#575a6c",
  plasmid = "#3686c9"
)

# Bar plot for number_of_MGE
p1 <- ggplot(mge_table, aes(x = mge, y = number_of_MGE, fill=mge)) +
  geom_bar(stat = "identity",width=0.7) +
  geom_text(aes(label = number_of_MGE),vjust = -0.3) +
  scale_fill_manual(values = mge_colors,guide="none") +
  labs(y = "Number of MGE", x = "") +
  theme_classic() +
  theme(axis.text = element_text(size = 12),
        axis.title.y = element_text(size=14))

p1

# Bar plot for percentage_of_MGE
p2 <- ggplot(mge_table, aes(x = mge, y = percentage_of_MGE, fill=mge)) +
  geom_bar(stat = "identity",width=0.7) +
  geom_text(aes(label = percentage_of_MGE),vjust = -0.3) +
  scale_fill_manual(values = mge_colors,guide="none") +
  labs(y = "Percentage of assembly (%)", x = "") +
  theme_classic() +
  theme(axis.text = element_text(size = 12),
        axis.title.y = element_text(size=14))

p2


#######################figure 2
amr_table <- data.frame(
  gene = rep(
    c("fosX","lin","mprF","norB","sul","SSI-1","mco","cadC"),
    each = 3
  ),
  type = rep(
    c("in chromosome","in plasmid","in plasmidic transposon"),
    times = 8
  ),
  count = c(
    57, 0, 0,   # fosX
    57, 0, 0,   # lin
    57, 0, 0,   # mprF
    57, 0, 0,   # norB
    57, 0, 0,   # sul
    52, 0, 0,   # SSI-1
    0, 37, 0,   # mco
    0, 0, 37    # cadC
  )
)

amr_table$gene <- factor(
  amr_table$gene,
  levels = c("fosX","lin","mprF","norB","sul","SSI-1","mco","cadC")
)
#bar plot for each gene locus
mge_colors2 <- c(
  "in plasmidic transposon" = "#b4c540",
  "in chromosome" = "#e0e2d2",
  "in plasmid" = "#3686c9"
)


p3 <- ggplot(amr_table, aes(x = gene, y = count, fill = type)) +
  geom_bar(stat = "identity",width=0.7) +
  labs(
    x = "",
    y = "Number of resistance CDS in each vehicle",
    fill = "Gene vehicle"
  ) +
  scale_fill_manual(values = mge_colors2) +
  geom_text(
    aes(label = ifelse(count == 0, "", count)),
    vjust = -0.3) +
  theme_classic() +
  theme(axis.text = element_text(size = 12),
        axis.title = element_text(size=14),
        legend.title = element_text(size=14),
        legend.text = element_text(size = 12))
p3

library(cowplot)
p.ab <- plot_grid(p1,p2,labels = c("A","B"),ncol = 2)
p.ab

ggsave(p.ab,file="./mge1.png",width = 9, height = 4)

p.d <- plot_grid(p3,labels = c("D"),ncol = 1)
ggsave(p.d,file="./mge2.png",width = 8, height = 5)


