import Lax825442.RelationClassification
import Mathlib.Tactic.Tauto

namespace Lax825442Proofs.RelationClassification
open Lax153141.GraphParameters
open Lax825442.StrictlyBounds Lax825442.Equivalent Lax825442.Incomparable

/--
---
conclusion: Lax825442.RelationClassification.relationClassification
---
After unfolding the definitions, classical propositional logic shows that
at least one of the four cases holds and that no two hold simultaneously.
-/
theorem relationClassification (p q : GraphParam) :
  (StrictlyBounds p q ∨ StrictlyBounds q p ∨ Equivalent p q ∨ Incomparable p q) ∧
    ¬ (StrictlyBounds p q ∧ StrictlyBounds q p) ∧
    ¬ (StrictlyBounds p q ∧ Equivalent p q) ∧
    ¬ (StrictlyBounds p q ∧ Incomparable p q) ∧
    ¬ (StrictlyBounds q p ∧ Equivalent p q) ∧
    ¬ (StrictlyBounds q p ∧ Incomparable p q) ∧
    ¬ (Equivalent p q ∧ Incomparable p q) := by
  classical
  unfold StrictlyBounds Equivalent Incomparable Lax825442.DoesNotBound.DoesNotBound
  tauto

end Lax825442Proofs.RelationClassification
