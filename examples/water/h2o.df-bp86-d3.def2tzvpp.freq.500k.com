%oldchk=h2o.df-bp86-d3.def2tzvpp.freq.chk
#P BP86/def2TZVPP/W06
! Density Functional Theory Calculation
DenFit ! Use density fitting
empiricaldispersion=GD3 ! Use Grimme Dispersion
freq geom=check guess=read
scf(xqc,MaxConventionalCycle=500) ! If necessary, resort to quadratic convergence
int(ultrafinegrid) ! Larger Grid
scrf(pcm,solvent=toluene)
gfinput gfoldprint iop(6/7=3) ! For molden
symmetry(loose) ! Loosen symmetry requirements
pop=full ! Full population analysis
pop=nbo6 ! Run a standard NBO6 analysis
pop(Allorbitals,ThreshOrbitals=5) ! Print a summary of AO contributions (> 5%) for all orbitals
Temp=500

Water DF-BP86-D3(PCM)/def2-TZVPP

0 1

