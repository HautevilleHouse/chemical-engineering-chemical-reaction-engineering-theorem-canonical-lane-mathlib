import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : String
  activationEnergy : ℝ
  preExponentialFactor : ℝ
  reactionOrder : ℕ
  equilibriumConstant : ℝ

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateLawClosed : R.rateLaw = "Arrhenius"
  activationEnergyClosed : R.activationEnergy > 0
  preExponentialFactorClosed : R.preExponentialFactor > 0
  reactionOrderClosed : R.reactionOrder = 1
  equilibriumConstantClosed : R.equilibriumConstant > 0

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateLaw = "Arrhenius" ∧ R.activationEnergy > 0 ∧ R.preExponentialFactor > 0 ∧ R.reactionOrder = 1 ∧ R.equilibriumConstant > 0

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact And.intro E.rateLawClosed (And.intro E.activationEnergyClosed (And.intro E.preExponentialFactorClosed (And.intro E.reactionOrderClosed E.equilibriumConstantClosed)))

end ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse