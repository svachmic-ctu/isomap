# Isomap

The goal was to implement Isomap and compare its performance to PCA and t-SNE. The whole idea came up first when implementing this in Matlab for homework at my Alma Mater - Czech Technical University in Prague. Even though Matlab is a great tool, I had a strong desire to do it in R as well. This repo is the result.

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