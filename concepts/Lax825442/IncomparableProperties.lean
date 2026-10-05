import Lax825442.Incomparable

/-!
---
title: Incomparability is symmetric and irreflexive
type: theorem
---
Incomparability of graph parameters is symmetric: exchanging the parameters
exchanges its two nonbounds. It is also irreflexive, since every parameter
bounds itself using the identity function.
-/

namespace Lax825442.IncomparableProperties

open Lax153141.GraphParameters

/-- Incomparability is symmetric and no parameter is incomparable with itself. -/
axiom incomparable_symmetric_irreflexive :
  (Symmetric Lax825442.Incomparable.Incomparable) ∧
    (Irreflexive Lax825442.Incomparable.Incomparable)

end Lax825442.IncomparableProperties
