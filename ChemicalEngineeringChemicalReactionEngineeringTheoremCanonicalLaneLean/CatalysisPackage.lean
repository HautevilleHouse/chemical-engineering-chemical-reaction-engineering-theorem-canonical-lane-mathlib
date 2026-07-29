import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean

structure CatalysisPackage where
  catalystSurface : Type u
  activeSites : Type v
  adsorptionIsotherms : Type w
  langmuirHinshelwoodKinetics : Prop
  catalystDeactivation : Prop
  selectivityModels : Prop

structure CatalysisEvidence (C : CatalysisPackage) where
  langmuirHinshelwoodKineticsClosed : C.langmuirHinshelwoodKinetics
  catalystDeactivationClosed : C.catalystDeactivation
  selectivityModelsClosed : C.selectivityModels

def CatalysisClosed (C : CatalysisPackage) : Prop :=
  C.langmuirHinshelwoodKinetics ∧ C.catalystDeactivation ∧ C.selectivityModels

theorem catalysis_closed_from_evidence (C : CatalysisPackage) (E : CatalysisEvidence C) :
    CatalysisClosed C := by
  exact And.intro E.langmuirHinshelwoodKineticsClosed (And.intro E.catalystDeactivationClosed E.selectivityModelsClosed)

end ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
