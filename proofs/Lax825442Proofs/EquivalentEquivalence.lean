import Lax825442.EquivalentEquivalence

namespace Lax825442Proofs.EquivalentEquivalence

open Lax153141.GraphParameters
open Lax825442.Bounds Lax825442.Equivalent

private theorem bounds_refl (p : GraphParam) : Bounds p p := by
  refine ⟨id, monotone_id, ?_⟩
  intro V _ _ G
  exact le_refl (p G)

private theorem bounds_trans {p q r : GraphParam}
    (hpq : Bounds p q) (hqr : Bounds q r) : Bounds p r := by
  obtain ⟨f, hf, hpq⟩ := hpq
  obtain ⟨g, hg, hqr⟩ := hqr
  refine ⟨g ∘ f, hg.comp hf, ?_⟩
  intro V _ _ G
  exact (hqr G).trans (hg (hpq G))

/--
---
conclusion: Lax825442.EquivalentEquivalence.equivalent_equivalence
---
Identity bounds establish reflexivity, swapping bounds establishes symmetry,
and composing bounds in both directions establishes transitivity.
-/
theorem equivalent_equivalence : Equivalence Equivalent := by
  refine ⟨?_, ?_, ?_⟩
  · intro p
    exact ⟨bounds_refl p, bounds_refl p⟩
  · intro p q h
    exact ⟨h.2, h.1⟩
  · intro p q r hpq hqr
    exact ⟨bounds_trans hpq.1 hqr.1, bounds_trans hqr.2 hpq.2⟩

end Lax825442Proofs.EquivalentEquivalence
