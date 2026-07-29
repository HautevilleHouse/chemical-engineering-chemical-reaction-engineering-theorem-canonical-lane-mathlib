import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean

structure ReactionRatePackage where
  forwardRateConstant : ℝ
  reverseRateConstant : ℝ
  equilibriumConstant : ℝ
  activationEnergy : ℝ
  temperature : ℝ
  rateExpression : Prop
  rateExpressionClosed : rateExpression

structure ReactionRateEvidence (R : ReactionRatePackage) where
  rateExpressionClosed : R.rateExpression

def ReactionRateClosed (R : ReactionRatePackage) : Prop :=
  R.rateExpression

theorem reaction_rate_closed_from_evidence (R : ReactionRatePackage) (E : ReactionRateEvidence R) : ReactionRateClosed R :=
  E.rateExpressionClosed

end ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse