#p MP5/def2SVP
opt scf(xqc)
gfinput gfoldprint iop(6/7=3)
scrf(pcm,solvent=toluene)
pop=full pop=nbo6 pop=allorbitals
symmetry=loose

Water MP5/def2-SVP

0 1
O
H 1 bond
H 1 bond 2 angle

bond     1.2
angle  109.0
