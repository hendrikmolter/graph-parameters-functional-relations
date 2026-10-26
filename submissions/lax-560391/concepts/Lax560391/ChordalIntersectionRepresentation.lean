import Lax560391.ChordalGraphs

/-!
---
title: Chordal intersection representations
type: definition
---
A chordal intersection representation is an indexed family of chordal
graphs on the same vertex set whose edge intersection is the represented
graph. Each factor is consequently a supergraph. Zero factors represent
the complete simple graph.
-/

namespace Lax560391.ChordalIntersectionRepresentation

structure ChordalIntersectionRepresentation {V : Type}
    (G : SimpleGraph V) (k : ℕ) where
  factors : Fin k → SimpleGraph V
  chordal : ∀ i, Lax560391.ChordalGraphs.IsChordal (factors i)
  represents : ∀ u v, u ≠ v → (G.Adj u v ↔ ∀ i, (factors i).Adj u v)

end Lax560391.ChordalIntersectionRepresentation
