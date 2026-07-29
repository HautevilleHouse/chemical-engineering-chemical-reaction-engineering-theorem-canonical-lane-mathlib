import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean

structure ReactorDesignPackage where
  reactorTypes : Type u
  energyBalances : Type v
  materialBalances : Type w
  idealReactorModels : Prop
  nonidealFlowModels : Prop
  heatTransferModels : Prop

structure ReactorDesignEvidence (R : ReactorDesignPackage) where
  idealReactorModelsClosed : R.idealReactorModels
  nonidealFlowModelsClosed : R.nonidealFlowModels
  heatTransferModelsClosed : R.heatTransferModels

def ReactorDesignClosed (R : ReactorDesignPackage) : Prop :=
  R.idealReactorModels ∧ R.nonidealFlowModels ∧ R.heatTransferModels

theorem reactor_design_closed_from_evidence (R : ReactorDesignPackage) (E : ReactorDesignEvidence R) :
    ReactorDesignClosed R := by
  exact And.intro E.idealReactorModelsClosed (And.intro E.nonidealFlowModelsClosed E.heatTransferModelsClosed)

end ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
