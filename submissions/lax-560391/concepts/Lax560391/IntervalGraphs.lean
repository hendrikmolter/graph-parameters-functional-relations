import Lax560391.IntervalRepresentation

/-!
---
title: Interval graphs
type: definition
---
An interval graph is a graph admitting an interval representation by
nonempty closed real intervals. Empty and disconnected graphs are allowed.
-/

namespace Lax560391.IntervalGraphs

def IsInterval {V : Type} (G : SimpleGraph V) : Prop :=
  Nonempty (Lax560391.IntervalRepresentation.IntervalRepresentation G)

end Lax560391.IntervalGraphs
