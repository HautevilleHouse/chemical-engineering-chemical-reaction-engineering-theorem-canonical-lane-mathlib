import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean

structure ReactionKineticsPackage where
  rateConstants : Type u
  activationEnergies : Type v
  preExponentialFactors : Type w
  rateLaw : Prop
  arrheniusRelation : Prop
  temperatureDependence : Prop
  catalystEffects : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateLawClosed : R.rateLaw
  arrheniusRelationClosed : R.arrheniusRelation
  temperatureDependenceClosed : R.temperatureDependence
  catalystEffectsClosed : R.catalystEffects

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateLaw ∧ R.arrheniusRelation ∧ R.temperatureDependence ∧ R.catalystEffects

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.rateLawClosed (And.intro E.arrheniusRelationClosed (And.intro E.temperatureDependenceClosed E.catalystEffectsClosed))

end ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
