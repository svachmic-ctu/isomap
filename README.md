# Isomap

The goal was to implement Isomap and compare its performance to PCA and t-SNE. The whole idea came up first when implementing this in Matlab for homework at my Alma Mater - Czech Technical University in Prague. Even though Matlab is a great tool, I had a strong desire to do it in R as well. This repo is the result.

## Usage

The example implementation includes a script that loads a processes the data along with all labels and colors. To call that, simply do:

```r
source("dimreduction.R")
dimreduction()
```

In order to use the Isomap algorithm, it needs to be given only the CSV file to work with:

```r
source("isomap.R")
data_csv <- read.csv("data/data.csv", stringsAsFactors = F, sep=' ', header=F)
imap <- isomap(data_csv)
```

## Data

The dataset used for my implementation are 300-dimensional word2vec vector embeddings (in file data.csv) along with corresponding word labels in labels.txt for each line. Each of these words comes from one of 10 selected classes of synonyms which can be recognized w.r.t. labels denoted in the file colors.csv.

## Workflow

1. Use k-NN to construct the neighborhood graph.
2. Compute shortest-paths (geodesic) matrix using Floyd-Warshall algorithm.
3. Project the geodesic distance distance matrix into 2D space with classical multidimensional scaling.

## Dependencies

The code uses the [deldir] package for Voronoi Tessellations.

## License

The code is released under the MIT license. See LICENSE for details.

[deldir]: https://cran.r-project.org/web/packages/deldir/index.html