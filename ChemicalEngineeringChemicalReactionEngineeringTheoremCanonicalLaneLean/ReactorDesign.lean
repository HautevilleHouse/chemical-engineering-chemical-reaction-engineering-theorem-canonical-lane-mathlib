import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean.ReactionKinetics

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean

structure ReactorDesignPackage {R : ReactionKineticsPackage} where
  massBalance : Prop
  energyBalance : Prop
  residenceTime : Prop
  conversionRelation : Prop

structure ReactorDesignEvidence {R : ReactionKineticsPackage}
    (D : ReactorDesignPackage R) where
  massBalanceClosed : D.massBalance
  energyBalanceClosed : D.energyBalance
  residenceTimeClosed : D.residenceTime
  conversionRelationClosed : D.conversionRelation

def ReactorDesignClosed {R : ReactionKineticsPackage}
    (D : ReactorDesignPackage R) : Prop :=
  D.massBalance ∧ D.energyBalance ∧ D.residenceTime ∧ D.conversionRelation

theorem reactor_design_closed_from_evidence
    {R : ReactionKineticsPackage} (D : ReactorDesignPackage R)
    (E : ReactorDesignEvidence D) : ReactorDesignClosed D := by
  exact And.intro E.massBalanceClosed
    (And.intro E.energyBalanceClosed
      (And.intro E.residenceTimeClosed E.conversionRelationClosed))

end ChemicalEngineeringChemicalReactionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse