import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean

structure MassTransferPackage where
  diffusivities : Type u
  boundaryLayers : Type v
  massTransferCoefficients : Type w
  ficksLaw : Prop
  convectiveMassTransfer : Prop
  interfacialTransport : Prop

structure MassTransferEvidence (M : MassTransferPackage) where
  ficksLawClosed : M.ficksLaw
  convectiveMassTransferClosed : M.convectiveMassTransfer
  interfacialTransportClosed : M.interfacialTransport

def MassTransferClosed (M : MassTransferPackage) : Prop :=
  M.ficksLaw ∧ M.convectiveMassTransfer ∧ M.interfacialTransport

theorem mass_transfer_closed_from_evidence (M : MassTransferPackage) (E : MassTransferEvidence M) :
    MassTransferClosed M := by
  exact And.intro E.ficksLawClosed (And.intro E.convectiveMassTransferClosed E.interfacialTransportClosed)

end ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
