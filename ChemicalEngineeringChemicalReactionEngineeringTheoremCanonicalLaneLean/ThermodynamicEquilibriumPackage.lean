import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean

structure ThermodynamicEquilibriumPackage where
  gibbsFreeEnergyChange : ℝ
  equilibriumConstant : ℝ
  temperature : ℝ
  enthalpyChange : ℝ
  entropyChange : ℝ

structure ThermodynamicEquilibriumEvidence (T : ThermodynamicEquilibriumPackage) where
  gibbsFreeEnergyChangeClosed : T.gibbsFreeEnergyChange = -8.314 * T.temperature * Real.log T.equilibriumConstant
  equilibriumConstantClosed : T.equilibriumConstant > 0
  temperatureClosed : T.temperature > 0
  enthalpyChangeClosed : T.enthalpyChange ≠ 0
  entropyChangeClosed : T.entropyChange ≠ 0

def ThermodynamicEquilibriumClosed (T : ThermodynamicEquilibriumPackage) : Prop :=
  T.gibbsFreeEnergyChange = -8.314 * T.temperature * Real.log T.equilibriumConstant ∧ T.equilibriumConstant > 0 ∧ T.temperature > 0 ∧ T.enthalpyChange ≠ 0 ∧ T.entropyChange ≠ 0

theorem thermodynamic_equilibrium_closed_from_evidence (T : ThermodynamicEquilibriumPackage) (E : ThermodynamicEquilibriumEvidence T) : ThermodynamicEquilibriumClosed T := by
  exact And.intro E.gibbsFreeEnergyChangeClosed (And.intro E.equilibriumConstantClosed (And.intro E.temperatureClosed (And.intro E.enthalpyChangeClosed E.entropyChangeClosed)))

end ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse