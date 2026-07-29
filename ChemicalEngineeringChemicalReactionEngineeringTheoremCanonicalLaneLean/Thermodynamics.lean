import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean

structure ThermodynamicsPackage where
  internalEnergy : Type u
  entropy : Type v
  enthalpy : Type w
  gibbsFreeEnergy : Prop
  helmholtzFreeEnergy : Prop
  legendreTransformDefined : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  helmholtzFreeEnergyClosed : T.helmholtzFreeEnergy
  legendreTransformDefinedClosed : T.legendreTransformDefined

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.gibbsFreeEnergy ∧ T.helmholtzFreeEnergy ∧ T.legendreTransformDefined

theorem thermodynamics_closed_from_evidence
    (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.gibbsFreeEnergyClosed
    (And.intro E.helmholtzFreeEnergyClosed E.legendreTransformDefinedClosed)

end ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
