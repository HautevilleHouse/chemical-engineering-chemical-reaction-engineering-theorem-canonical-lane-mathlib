import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean

structure ThermodynamicEquilibriumPackage where
  gibbsFreeEnergy : ℝ
  enthalpy : ℝ
  entropy : ℝ
  equilibriumCondition : Prop
  vantHoffEquation : Prop
  equilibriumConditionClosed : equilibriumCondition
  vantHoffEquationClosed : vantHoffEquation

structure ThermodynamicEquilibriumEvidence (T : ThermodynamicEquilibriumPackage) where
  equilibriumConditionClosed : T.equilibriumCondition
  vantHoffEquationClosed : T.vantHoffEquation

def ThermodynamicEquilibriumClosed (T : ThermodynamicEquilibriumPackage) : Prop :=
  T.equilibriumCondition ∧ T.vantHoffEquation

theorem thermodynamic_equilibrium_closed_from_evidence (T : ThermodynamicEquilibriumPackage) (E : ThermodynamicEquilibriumEvidence T) : ThermodynamicEquilibriumClosed T :=
  And.intro E.equilibriumConditionClosed E.vantHoffEquationClosed

end ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse