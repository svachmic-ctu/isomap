plotpoints <- function(data, labels, colors, title) {
    gsub("_", "", labels[,1])
    rb = rainbow(10, s=1, v=1, start = 0, end=1, alpha=1)
    for (i in 1:length(colors)) {
        colors[i,1] = rb[colors[i,1]]
    }
    
    library(deldir)
    d <- deldir(data[,1], data[,2], plot=TRUE, col = colors[,1])
    plot(d, wlines="tess")
    
    points(data[,1], data[,2], col=colors[,1], pch=20)
    text(data[,1], data[,2], cex=0.5, labels = labels[,1], pos = 4, col=colors[,1], offset=0.3)
    title(main = title)
}
