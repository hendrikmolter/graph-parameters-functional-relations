This submission defines thirteen parameters of finite simple undirected graphs:
maximum matching number, twin-cover number, neighborhood diversity, degeneracy, and
arboricity, chromatic number, vertex-cover number, vertex clique-cover number,
clique-width, distance to cographs, distance to planar graphs, distance to
complete graphs, and distance to cluster graphs.
Disconnected graphs are included, and all thirteen
parameters assign value zero to the empty graph.

The parameters are defined through matchings, twin-covers, neighborhood
partitions, degree conditions on induced subgraphs, and partitions of the
edge set into forests, respectively. Each parameter has its own definition
concept. Chromatic number and vertex-cover number reuse mathlib's definitions
through conversion to natural numbers on finite graphs. Vertex clique-cover
number is the chromatic number of the complement.
Clique-width minimizes the labels of a valid expression from Lax's existing
expression language. The four vertex-deletion distances reuse registered
cograph and planarity predicates and mathlib's complete-graph and
complete-multipartite predicates.

Five further definitions express computable functional boundedness, functional
equivalence, absence of a functional bound, strict functional boundedness,
and incomparability on all finite
simple graphs. Bounding functions are required to be total computable and
nondecreasing; equivalence requires such bounds in both directions.
No comparisons between the thirteen concrete parameters are asserted.

A theorem establishes that exactly one of four relations holds for every
parameter pair: strict functional boundedness in either direction, functional
equivalence, or incomparability.

Further theorems prove that functional equivalence is an equivalence relation,
strict functional boundedness is a strict partial order, and incomparability
is symmetric and irreflexive.

