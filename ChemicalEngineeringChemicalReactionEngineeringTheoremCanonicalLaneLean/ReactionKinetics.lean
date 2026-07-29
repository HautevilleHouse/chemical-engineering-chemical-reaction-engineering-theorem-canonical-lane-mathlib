import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : Type u
  rateConstant : Type v
  activationEnergy : Type w
  temperature : Type x
  arrheniusRelation : Prop
  massActionBalance : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  arrheniusRelationClosed : R.arrheniusRelation
  massActionBalanceClosed : R.massActionBalance

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.arrheniusRelation ∧ R.massActionBalance

theorem reaction_kinetics_closed_from_evidence
    (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.arrheniusRelationClosed E.massActionBalanceClosed

end ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse