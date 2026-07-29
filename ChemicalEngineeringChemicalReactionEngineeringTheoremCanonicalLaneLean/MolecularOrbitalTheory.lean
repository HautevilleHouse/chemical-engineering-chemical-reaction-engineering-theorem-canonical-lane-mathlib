import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  hamiltonian : Type u
  orbitalBasis : Type v
  slaterDeterminant : Type w
  homoEnergy : Prop
  lumoEnergy : Prop
  hartreeFockSelfConsistent : Prop

structure MolecularOrbitalTheoryEvidence (M : MolecularOrbitalTheoryPackage) where
  homoEnergyClosed : M.homoEnergy
  lumoEnergyClosed : M.lumoEnergy
  hartreeFockSelfConsistentClosed : M.hartreeFockSelfConsistent

def MolecularOrbitalTheoryClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.homoEnergy ∧ M.lumoEnergy ∧ M.hartreeFockSelfConsistent

theorem molecular_orbital_theory_closed_from_evidence
    (M : MolecularOrbitalTheoryPackage) (E : MolecularOrbitalTheoryEvidence M) :
    MolecularOrbitalTheoryClosed M := by
  exact And.intro E.homoEnergyClosed
    (And.intro E.lumoEnergyClosed E.hartreeFockSelfConsistentClosed)

end ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
