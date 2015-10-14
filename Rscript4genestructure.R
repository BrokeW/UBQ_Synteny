library(grid)
library(ade4)
library(genoPlotR)

names1 <- c("LamG", "UBQ", "S_Tkc")
starts1 <- c(30160, 27500, 26134)
ends1 <- c(28857, 26326, 23786)
strands1 <- c(1, 1, -1)
cols1 <- c("green", "yellow", "red")
df1 <- data.frame(name=names1, start=starts1, end=ends1,
                  strand=strands1, col=cols1)
dna_seg1 <- dna_seg(df1)
is.dna_seg(dna_seg1)


## plot
mid_pos=(starts1+ends1)/2
annot1 <- annotation(x1=mid_pos, text=names1)
annot2 <- annotation(x1=starts1, text=as.character(starts1))
plot_gene_map(dna_segs=list(dna_seg1), annotations=list(annot1))
