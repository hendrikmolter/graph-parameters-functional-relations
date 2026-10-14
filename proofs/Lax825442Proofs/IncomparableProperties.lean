import Lax825442.IncomparableProperties

namespace Lax825442Proofs.IncomparableProperties

open Lax153141.GraphParameters
open Lax825442.Bounds Lax825442.Incomparable

/--
---
conclusion: Lax825442.IncomparableProperties.incomparable_symmetric_irreflexive
---
Exchanging the two assertions that no bound exists establishes symmetry.
For irreflexivity, the identity function bounds every parameter by itself,
contradicting the assumption of incomparability.
-/
theorem incomparable_symmetric_irreflexive :
    (Symmetric Incomparable) ∧ (Irreflexive Incomparable) := by
  constructor
  · intro p q h
    exact ⟨h.2, h.1⟩
  · intro p h
    apply h.1
    refine ⟨id, Computable.id, monotone_id, ?_⟩
    intro V _ _ G
    exact le_refl (p G)

end Lax825442Proofs.IncomparableProperties
