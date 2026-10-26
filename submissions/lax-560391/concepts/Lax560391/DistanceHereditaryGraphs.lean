import Mathlib.Combinatorics.SimpleGraph.Metric

/-!
---
title: Distance-hereditary graphs
type: definition
---
A graph is distance-hereditary if every connected induced subgraph preserves
the distances between its vertices. Extended shortest-path distance is used
to distinguish disconnected pairs. Empty and disconnected graphs are allowed.
-/

namespace Lax560391.DistanceHereditaryGraphs

/-- Every connected induced subgraph retains the distances of `G`.
Extended distance avoids identifying disconnected pairs with distance zero. -/
def IsDistanceHereditary {V : Type} (G : SimpleGraph V) : Prop :=
  ∀ S : Set V, (G.induce S).Connected →
    ∀ u v : S, (G.induce S).edist u v = G.edist u.1 v.1

end Lax560391.DistanceHereditaryGraphs
