import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean

structure AdmittedChemicalObject where
  rateLawValid : Prop
  equilibriumReached : Prop
  reactorDesignFeasible : Prop

def AdmissibleClass (O : AdmittedChemicalObject) : Prop :=
  O.rateLawValid ∧ O.equilibriumReached ∧ O.reactorDesignFeasible

end ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse