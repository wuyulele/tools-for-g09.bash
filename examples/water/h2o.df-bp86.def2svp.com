%chk=h2o.df-bp86.def2svp.chk
#P BP86/def2SVP/W06
! Density Functional Theory Calculation
DenFit ! Use density fitting
opt (MaxCycle=100) ! Use more optimisation cycles
opt(VeryTight) ! Use very tight convergence (Gaussian will have trouble finishing the calculation because of this double specification.)
scf(xqc,MaxConventionalCycle=500) ! If necessary, resort to quadratic convergence
int(ultrafinegrid) ! Larger Grid
gfinput gfoldprint iop(6/7=3) ! For molden
symmetry(loose) ! Loosen symmetry requirements
pop=full ! Full population analysis
pop=nbo6read ! Run a (non-) standard NBO6 analysis

Water DF-BP86/def2-SVP

0 1
 O     0.000000     0.000000     0.000000
 H     0.000000     0.000000     0.950000
 H     0.895670     0.000000    -0.316663

$nbo archive file=h2o.df-bp86.def2svp bndidx $end

