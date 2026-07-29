import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean

structure ThermodynamicsPackage where
  gibbsFreeEnergy : Type u
  enthalpy : Type v
  entropy : Type w
  equilibriumConstants : Prop
  phaseEquilibria : Prop
  reactionThermodynamics : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  equilibriumConstantsClosed : T.equilibriumConstants
  phaseEquilibriaClosed : T.phaseEquilibria
  reactionThermodynamicsClosed : T.reactionThermodynamics

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.equilibriumConstants ∧ T.phaseEquilibria ∧ T.reactionThermodynamics

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.equilibriumConstantsClosed (And.intro E.phaseEquilibriaClosed E.reactionThermodynamicsClosed)

end ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
