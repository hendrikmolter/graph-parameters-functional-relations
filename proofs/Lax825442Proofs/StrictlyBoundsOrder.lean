import Lax825442.StrictlyBoundsOrder

namespace Lax825442Proofs.StrictlyBoundsOrder

open Lax153141.GraphParameters
open Lax825442.Bounds Lax825442.StrictlyBounds

private theorem bounds_trans {p q r : GraphParam}
    (hpq : Bounds p q) (hqr : Bounds q r) : Bounds p r := by
  obtain ⟨f, hfc, hf, hpq⟩ := hpq
  obtain ⟨g, hgc, hg, hqr⟩ := hqr
  refine ⟨g ∘ f, hgc.comp hfc, hg.comp hf, ?_⟩
  intro V _ _ G
  exact (hqr G).trans (hg (hpq G))

/--
---
conclusion: Lax825442.StrictlyBoundsOrder.strictlyBounds_strictOrder
---
A strict self-bound contradicts itself. For transitivity, compose the forward
bounds; a reverse bound would contradict the first strict comparison.
-/
theorem strictlyBounds_strictOrder : IsStrictOrder GraphParam StrictlyBounds := by
  refine { irrefl := ?_, trans := ?_ }
  · intro p h
    exact h.2 h.1
  · intro p q r hpq hqr
    refine ⟨bounds_trans hpq.1 hqr.1, ?_⟩
    intro hrp
    exact hpq.2 (bounds_trans hqr.1 hrp)

end Lax825442Proofs.StrictlyBoundsOrder
