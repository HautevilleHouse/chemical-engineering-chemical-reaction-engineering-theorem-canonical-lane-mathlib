import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean

structure TransportPhenomenaPackage where
  momentumTransport : Type u
  energyTransport : Type v
  massTransport : Type w
  navierStokesEquations : Prop
  fouriersLaw : Prop
  ficksLawDiffusion : Prop

structure TransportPhenomenaEvidence (T : TransportPhenomenaPackage) where
  navierStokesEquationsClosed : T.navierStokesEquations
  fouriersLawClosed : T.fouriersLaw
  ficksLawDiffusionClosed : T.ficksLawDiffusion

def TransportPhenomenaClosed (T : TransportPhenomenaPackage) : Prop :=
  T.navierStokesEquations ∧ T.fouriersLaw ∧ T.ficksLawDiffusion

theorem transport_phenomena_closed_from_evidence (T : TransportPhenomenaPackage) (E : TransportPhenomenaEvidence T) :
    TransportPhenomenaClosed T := by
  exact And.intro E.navierStokesEquationsClosed (And.intro E.fouriersLawClosed E.ficksLawDiffusionClosed)

end ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
