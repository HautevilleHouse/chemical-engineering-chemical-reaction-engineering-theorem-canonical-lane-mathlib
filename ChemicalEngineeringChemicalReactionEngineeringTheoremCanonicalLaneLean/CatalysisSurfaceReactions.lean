import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean

structure CatalysisPackage where
  activeSiteDensity : ℝ
  langmuirHinshelwoodKinetics : Prop
  surfaceCoverage : Prop
  rateLimitingStep : Prop
  catalystDeactivation : Prop
  langmuirHinshelwoodKineticsClosed : langmuirHinshelwoodKinetics
  surfaceCoverageClosed : surfaceCoverage
  rateLimitingStepClosed : rateLimitingStep
  catalystDeactivationClosed : catalystDeactivation

structure CatalysisEvidence (C : CatalysisPackage) where
  langmuirHinshelwoodKineticsClosed : C.langmuirHinshelwoodKinetics
  surfaceCoverageClosed : C.surfaceCoverage
  rateLimitingStepClosed : C.rateLimitingStep
  catalystDeactivationClosed : C.catalystDeactivation

def CatalysisClosed (C : CatalysisPackage) : Prop :=
  C.langmuirHinshelwoodKinetics ∧ C.surfaceCoverage ∧ C.rateLimitingStep ∧ C.catalystDeactivation

theorem catalysis_closed_from_evidence (C : CatalysisPackage) (E : CatalysisEvidence C) : CatalysisClosed C :=
  And.intro E.langmuirHinshelwoodKineticsClosed (And.intro E.surfaceCoverageClosed (And.intro E.rateLimitingStepClosed E.catalystDeactivationClosed))

end ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse