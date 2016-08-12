dimreduction <- function() {
    source("plotpoints.R")

    colors <- read.csv("misc/colors.csv", stringsAsFactors = F, header=F)
    lbls <- read.table("data/labels.txt", stringsAsFactors = F, sep='\n')
    
    x11()
    data_csv <- read.csv("data/data.csv", stringsAsFactors = F, sep=' ', header=F)
    plotpoints(data = data_csv, labels = lbls, colors = colors, title = "Original")
    
    x11()
    data_csv <- read.csv("data/data.csv", stringsAsFactors = F, sep=' ', header=F)
    pc <- prcomp(x = data_csv, center = TRUE, scale = TRUE)
    plotpoints(data = pc$x, labels = lbls, colors = colors, title = "PCA")
    
    x11()
    data_csv <- read.csv("data/data.csv", stringsAsFactors = F, sep=' ', header=F)
    source("isomap.R")
    imap <- isomap(data_csv)
    plotpoints(data = imap, labels = lbls, colors = colors, title = "ISO-MAP")
    
    x11()
    data_csv <- read.csv("data/data.csv", stringsAsFactors = F, sep=' ', header=F)
    library("tsne")
    tsne <- tsne(data_csv)
    plotpoints(data = tsne, labels = lbls, colors = colors, title = "t-SNE")
}