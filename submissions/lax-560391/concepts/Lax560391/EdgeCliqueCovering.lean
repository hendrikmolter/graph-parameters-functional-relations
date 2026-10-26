import Mathlib.Combinatorics.SimpleGraph.Clique

/-!
---
title: Edge clique covers
type: definition
---
An edge clique cover is an indexed family of vertex cliques covering every
edge. Cliques may overlap, be empty, or repeat; isolated vertices need not
be covered.
-/

namespace Lax560391.EdgeCliqueCovering

structure EdgeCliqueCovering {V : Type} [DecidableEq V]
    (G : SimpleGraph V) (k : ℕ) where
  cliques : Fin k → Finset V
  isClique : ∀ i, ∀ u ∈ cliques i, ∀ v ∈ cliques i, u ≠ v → G.Adj u v
  covers : ∀ ⦃u v⦄, G.Adj u v → ∃ i, u ∈ cliques i ∧ v ∈ cliques i

end Lax560391.EdgeCliqueCovering
