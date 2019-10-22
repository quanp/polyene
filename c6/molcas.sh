ulimit -s unlimited

source /home/quan/source/private/molcas-extra/build-gradient/vars

export PATH=/home/quan/source/private/CheMPS2/build/CheMPS2:$PATH
export PATH=/home/quan/source/Dice-1.0/Dice-0.9:$PATH
export PATH=/home/quan/source/private/block-1.5.3:$PATH
export PATH=/home/quan/source/openmpi-1.65-foss/bin:$PATH

export MOLCAS_PROJECT="polyene" # use input as project name
export MOLCAS_MEM=20000 # set memory size
export MOLCAS_NPROCS=4
export MOLCAS_NODES=`hostname`
export OMP_NUM_THREADS=8
export MOLCAS_DICE=8
export MOLCAS_BLOCK=8

export CurrDir=$PWD
export WorkDir=/temp0/quan/$MOLCAS_PROJECT.work
export Project=$MOLCAS_PROJECT


#### start the calculation ####
rm $WorkDir/*Orb $WorkDir/tmp*/*Orb $WorkDir/INPORB $WorkDir/tmp*/INPORB $WorkDir/*.Rasscf.Input $WorkDir/tmp*/*.Rasscf.Input $WorkDir/stdin $WorkDir/tmp*/stdin 2>/dev/null

cd $CurrDir

molcas c6.input > c6.log
