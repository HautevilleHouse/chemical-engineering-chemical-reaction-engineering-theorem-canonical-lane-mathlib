import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A with
  | AdmissibleClass.mk O _ _ _ => O.rateLawValid

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  rcases A with ⟨O, h1, h2, h3⟩
  exact h1

end ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse