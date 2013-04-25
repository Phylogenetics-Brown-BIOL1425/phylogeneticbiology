# The goal of this analysis is to see how will phylogenetically independent 
# contrasts can reconstruct character covariance when the number of 
# characters exceeds the number of species. In this case we will look at 30 
# characters on a tree with 8 species.

# Get set up, and construct the covariance matrix
library(geiger)
library(Matrix)
library(picante)

TrueCov = bdiag(matrix(rep(0.9, 100), 10), matrix(rep(0.5, 100), 10), diag(10))
diag(TrueCov) = 1
TrueCov = as.matrix(TrueCov)

# Simulate the tree and data
tree = rcoal(8)
plot(tree)
D = sim.char(tree, TrueCov, nsim=1, model='BM')

# Calculate the independent contrasts
contrasts = apply( D, 2, function(a) pic(a, tree) )

# Calculate the observed correlations from the contrasts
ObsCor = cor.table(contrasts)$r

# Display the original and observed matrices

image(TrueCov, main='Original')
image(ObsCor, main='Observed')

# Relative to the true matrix, the observed matrix is quite noisy. Many of 
# the elements that should be 0 are instead estimated to be quite strong, 
# and there is quite a bit of variation within blocks that should be 
# non-zero.
#
# This means that we have to be careful interpreting covariances in 
# comparative phylogenetic analyses when the number of variables exceeds 
# the number of species. In particular, there can be many false positives.