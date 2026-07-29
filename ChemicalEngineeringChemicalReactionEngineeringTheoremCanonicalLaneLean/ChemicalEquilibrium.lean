import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean.ReactionKinetics

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean

structure ChemicalEquilibriumPackage {R : ReactionKineticsPackage} where
  equilibriumConstant : Type u
  gibbsFreeEnergy : Type v
  vanHoffEquation : Prop
  equilibriumCondition : Prop

structure ChemicalEquilibriumEvidence {R : ReactionKineticsPackage}
    (Eqlib : ChemicalEquilibriumPackage R) where
  vanHoffEquationClosed : Eqlib.vanHoffEquation
  equilibriumConditionClosed : Eqlib.equilibriumCondition

def ChemicalEquilibriumClosed {R : ReactionKineticsPackage}
    (Eqlib : ChemicalEquilibriumPackage R) : Prop :=
  Eqlib.vanHoffEquation ∧ Eqlib.equilibriumCondition

theorem chemical_equilibrium_closed_from_evidence
    {R : ReactionKineticsPackage} (Eqlib : ChemicalEquilibriumPackage R)
    (E : ChemicalEquilibriumEvidence Eqlib) : ChemicalEquilibriumClosed Eqlib := by
  exact And.intro E.vanHoffEquationClosed E.equilibriumConditionClosed

end ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse