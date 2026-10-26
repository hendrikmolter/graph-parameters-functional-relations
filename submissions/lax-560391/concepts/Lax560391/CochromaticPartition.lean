import Mathlib.Combinatorics.SimpleGraph.Basic

/-!
---
title: Cochromatic partitions
type: definition
---
A cochromatic partition assigns each vertex a part, each part inducing
either a clique or an independent set. Empty labels are allowed. Parts need
not be modules.
-/

namespace Lax560391.CochromaticPartition

structure CochromaticPartition {V : Type} (G : SimpleGraph V) (k : ℕ) where
  part : V → Fin k
  homogeneous : ∀ i,
    (∀ u v, u ≠ v → part u = i → part v = i → G.Adj u v) ∨
    (∀ u v, part u = i → part v = i → ¬ G.Adj u v)

end Lax560391.CochromaticPartition
